return {
  {
    "williamboman/mason.nvim",
    priority = 1000, -- 우선순위를 높게 설정
    config = function()
      local mason = require "mason"
      mason.setup {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    priority = 999, -- mason 다음으로 로드
    config = function()
      -- lspconfig 기본 설정만 여기서
      -- 실제 서버 설정은 별도 파일에서
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    priority = 998, -- 세 번째로 로드
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      -- mason과 lspconfig가 완전히 로드된 후 실행되도록 지연
      vim.defer_fn(function()
        local mason_lspconfig = require "mason-lspconfig"

        mason_lspconfig.setup {
          ensure_installed = {
            "ts_ls",
            "html",
            "cssls",
            "tailwindcss",
            "svelte",
            "lua_ls",
            "graphql",
            "emmet_ls",
            "prismals",
            "pyright",
            "clangd",
          },
          automatic_installation = false,
          automatic_enable = false, -- 자동 enable 비활성화
        }
      end, 100) -- 100ms 지연
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local mason_tool_installer = require "mason-tool-installer"
      mason_tool_installer.setup {
        ensure_installed = {
          "prettier",
          "stylua",
          "autopep8",
          "pylint",
          "eslint_d",
        },
      }
    end,
  },
}
