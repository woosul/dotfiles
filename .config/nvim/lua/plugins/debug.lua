return {
  -- Core DAP engine
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        dependencies = {
          "nvim-neotest/nvim-nio", -- 🆕 Required dependency
        },
        config = function()
          local dapui = require "dapui"
          dapui.setup()

          local dap = require "dap"
          dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
          end
          dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
          end
          dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
          end
        end,
      },
      {
        "theHamsta/nvim-dap-virtual-text",
        config = function()
          require("nvim-dap-virtual-text").setup()
        end,
      },
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      local dap_python = require "dap-python"
      -- Keymaps
      -- Core debugging
      vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
      vim.keymap.set("n", "<leader>dn", dap.step_over, { desc = "Step Over" })
      vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
      vim.keymap.set("n", "<leader>do", dap.step_out, { desc = "Step Out" })
      vim.keymap.set("n", "<leader>d", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
      vim.keymap.set("n", "<leader>db", function()
        dap.set_breakpoint(vim.fn.input "Breakpoint condition: ")
      end, { desc = "Conditional Breakpoint" })

      -- Debug UI
      vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })

      -- Python-specific
      vim.keymap.set("n", "<leader>dm", dap_python.test_method, { desc = "Debug Method" })
      vim.keymap.set("n", " mp<leader>df", dap_python.test_class, { desc = "Debug Class" })
    end,
  },

  -- Python adapter
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    config = function()
      local path = vim.fn.expand "~/.virtualenvs/debugpy/bin/python"
      require("dap-python").setup(path)
      vim.keymap.set("n", "<Leader>dm", function()
        require("dap-python").test_method()
      end)
    end,
  },

  --  -- can replace python dap adapter with local python adapter
  --   {
  --   "mfussenegger/nvim-dap",
  --   dependencies = {
  --     "mfussenegger/nvim-dap-python",
  --   },
  --   config = function()
  --     require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
  --   end

  --   -- Python debug adapter
  -- {
  --   "mfussenegger/nvim-dap-python",
  --   ft = "python",
  --   config = function()
  --     -- Automatically use current venv if possible
  --     local function get_python_path()
  --       local venv = os.getenv("VIRTUAL_ENV")
  --       if venv then return venv .. "/bin/python" end
  --       return vim.fn.exepath("python3") -- fallback
  --     end
  --
  --     require('dap-python').setup(get_python_path())
  --
  --     vim.keymap.set('n', '<Leader>dm', function()
  --       require('dap-python').test_method()
  --     end)
  --   end
  -- },

  -- Venv selector
  -- {
  --   "linux-cultist/venv-selector.nvim",
  --   cmd = "VenvSelect",
  --   opts = {
  --     name = ".venv",
  --     auto_refresh = true,
  --   },
  --   keys = {
  --     { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
  --     { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Use Cached VirtualEnv" },
  --   },
  -- },
  --
  -- -- Pytest test runner
  -- {
  --   "klen/nvim-test",
  --   ft = "python",
  --   config = function()
  --     require("nvim-test").setup {
  --       runners = {
  --         python = "nvim-test.runners.pytest",
  --       },
  --     }
  --     vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>", { desc = "Run nearest test" })
  --     vim.keymap.set("n", "<leader>tf", ":TestFile<CR>", { desc = "Run test file" })
  --     vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", { desc = "Run all tests" })
  --   end,
  -- },
}
