return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require "lint"

    local rcfile = vim.fn.getcwd() .. "/.pylintrc"
    local args = { "--from-stdin", "%filepath" }
    if vim.fn.filereadable(rcfile) == 1 then
      table.insert(args, 1, rcfile)
      table.insert(args, 1, "--rcfile")
    end

    lint.linters.pylint = {
      name = "pylint",
      cmd = "pylint",
      args = args,
      stdin = true,
      stream = "stdout",
      ignore_exitcode = true,
      parser = function(output, bufnr)
        local diagnostics = {}
        for line in vim.gsplit(output, "\n") do
          local _, lnum, col, type_code, message = string.match(line, "([^:]+):(%d+):(%d+): ([A-Z]%d+): (.+)")
          if lnum and col and type_code and message then
            local severity_map = {
              E = vim.diagnostic.severity.ERROR,
              W = vim.diagnostic.severity.WARN,
              R = vim.diagnostic.severity.INFO,
              C = vim.diagnostic.severity.HINT,
              F = vim.diagnostic.severity.ERROR,
            }
            local severity_letter = type_code:sub(1, 1)

            table.insert(diagnostics, {
              lnum = tonumber(lnum) - 1,
              col = tonumber(col) - 1,
              severity = severity_map[severity_letter] or vim.diagnostic.severity.INFO,
              message = message,
              source = "pylint",
            })
          end
        end
        return diagnostics
      end,
    }

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      svelte = { "eslint_d" },
      python = { "pylint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
