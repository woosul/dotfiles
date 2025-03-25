vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- exit insert mode with jk instead of ESC
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- highlight enabled when searching
keymap.set("n", "<leader>hl", "<cmd>set hlsearch<CR>", { desc = "Set search highlights" })
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

-- keep selection when indenting in visual mode
keymap.set("v", ">", ">gv", { noremap = true, silent = true })
keymap.set("v", "<", "<gv", { noremap = true, silent = true })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>t1", "<cmd>tabfir<CR>", { desc = "Go to first tab" }) --  go to first tab
keymap.set("n", "<leader>t0", "<cmd>tabl<CR>", { desc = "Go to last tab" }) --  go to last tab
keymap.set("n", "<leader>ty", "<cmd>tabonly<CR>", { desc = "Close all tabs except current tab" }) -- close all tab pages except for the current one
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- nvim tree management by nvim-tree.lua
-- keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true })
-- keymap.set('n', '<leader>ef', ':NvimTreeFindFile<CR>', { noremap = true })

keymap.set("n", "<C-h>", "<C-w>h", { desc = "move place to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "move place to below window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "move place to upper window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "move place to righ tot window" })
