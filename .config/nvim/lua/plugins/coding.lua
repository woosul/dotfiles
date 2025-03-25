return {
	{
		"m4xshen/smartcolumn.nvim",
		opts = {
			disabled_filetypes = {
				"netrw",
				"NvimTree",
				"Lazy",
				"mason",
				"help",
				"text",
				"markdown",
				"tex",
				"html",
			},
			scope = "window",
		},
	},
	{
		-- "lukas-reineke/virt-column.nvim",
		-- opts = {}
		"lukas-reineke/virt-column.nvim",
		config = function()
			require("virt-column").setup()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"themaxmarchuk/tailwindcss-colors.nvim",
		config = function()
			require("tailwindcss-colors").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		main = "ibl",
		opts = {
			-- indent = { char = "┊" },
		},
	},

	{
		"chipsenkbeil/distant.nvim",
		branch = "v0.2",
		config = function()
			require("distant").setup({
				["*"] = require("distant.settings").chip_default(),
			})
		end,
	},
}
