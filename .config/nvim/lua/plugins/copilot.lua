return {
	-- Ensure Copilot is installed first
	"github/copilot.vim",
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
		opts = {
			window = {
				width = 0.3,
				-- height = 0.5,
				-- border = "rounded",
				-- winblend = 10, -- Reduced transparency for better readability
			},
		},
	},
	event = "InsertEnter", -- Load Copilot when entering insert mode
	config = function()
		-- Copilot Settings
		vim.g.copilot_no_tab_map = true -- Disable default <Tab> mapping
		vim.g.copilot_assume_mapped = true -- Assume manual mapping
		vim.g.copilot_tab_fallback = "" -- Don't override <Tab>
		-- vim.g.copilot_filetypes = { xml = false, markdown = false } -- Disable Copilot for XML and Markdown
	end,
	-- Copilot Keybindings
	vim.keymap.set("i", "<C-l>", 'copilot#Accept("<CR>")', { expr = true, silent = true }), -- Accept Copilot suggestion
	-- vim.keymap.set("n", "<leader>cc", ":CopilotChat param1<CR>", { desc = "Open Copilot Chat" }), -- Start Chat
	vim.keymap.set("n", "<leader>cc", function()
		local param1 = vim.fn.input("Enter parameter: ")
		vim.cmd("CopilotChat " .. param1)
	end, { desc = "Open Copilot Chat with user input" }),
	vim.keymap.set("n", "<leader>cf", ":CopilotChatFix<CR>", { desc = "Fix Code with Copilot" }), -- Auto Fix
	vim.keymap.set("v", "<leader>cp", ":CopilotChatExplain<CR>", { desc = "Explain Code with visual block" }), -- Explain Selection
	vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>", { desc = "Disable Copilot" }), -- Disable Copilot
	vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>", { desc = "Enable Copilot" }), -- Enable Copilot
}
