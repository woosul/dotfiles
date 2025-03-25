return {
   -- {
   --    "nvim-treesitter/nvim-treesitter",
   --    build = ":TSUpdate",
   --    config = function ()
   --       require("nvim-treesitter.configs").setup({
   --          auto_install = true,
   --          ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc",
   --             "javascript", "html", "css", "bash", "comment",  "tsx", "query", "markdown", "markdown_inline" },
   --          highlight = { enable = true },
   --          indent = { enable = true },
   --          autotag = { enable = true },
   --       })
   --    end,
   -- },
	{
	  "nvim-treesitter/nvim-treesitter",
	  event = { "BufReadPre", "BufNewFile" },
	  build = ":TSUpdate",
	  dependencies = {
		 "windwp/nvim-ts-autotag",
	  },
	  config = function()
		 -- import nvim-treesitter plugin
		 local treesitter = require("nvim-treesitter.configs")

		 -- configure treesitter
		 treesitter.setup({	-- enable syntax highlighting
	  	highlight = { enable = true, },
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true, },
			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,
			-- ensure these language parsers are installed
			ensure_installed = {
			  "json",
			  "javascript",
			  "typescript",
			  "tsx",
			  "yaml",
			  "html",
			  "css",
			  "prisma",
			  "markdown",
			  "markdown_inline",
			  "svelte",
			  "graphql",
			  "bash",
			  "lua",
			  "vim",
			  "dockerfile",
			  "gitignore",
			  "query",
			  "vimdoc",
			  "c",
			  "cpp",
			  "python",
			},
			incremental_selection = {
			  enable = true,
			  keymaps = {
				 init_selection = "<C-space>",
				 node_incremental = "<C-space>",
				 scope_incremental = false,
				 node_decremental = "<bs>",
			  },
			},
		 })
	  end,
	},

   {
      'nvim-treesitter/playground',
      config = function()
         require "nvim-treesitter.configs".setup {
            -- playground = {
            --    enable = true,
            --    disable = {},
            --    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
            --    persist_queries = false, -- Whether the query persists across vim sessions
            --    keybindings = {
            --       toggle_query_editor = 'o',
            --       toggle_hl_groups = 'i',
            --       toggle_injected_languages = 't',
            --       toggle_anonymous_nodes = 'a',
            --       toggle_language_display = 'I',
            --       focus_language = 'f',
            --       unfocus_language = 'F',
            --       update = 'R',
            --       goto_node = '<cr>',
            --       show_help = '?',
            --    },
            -- }
         }
      end
   }
}
