local function map(mode, lhs, rhs, opts)
	-- set default value if not specify
	if opts.noremap == nil then
		opts.noremap = true
	end
	if opts.silent == nil then
		opts.silent = true
	end

	vim.keymap.set(mode, lhs, rhs, opts)
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- File handling
map("n", "<C-s>", ":write<CR>", { desc = "Save file" })    -- Save file (eg. :w)
map("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Quit all" })      -- Quit all files
map("n", "<leader>wq", "<cmd>wqa<cr>", { desc = "Save/Quit all" })      -- Save and Quit all files

-- new file
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- Markdown Preview
map("n", "<M-p>", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown preview start/stop" })      -- Markdown doc proview start/stop

-- leader movements
map("n", "<Leader>hs", ":source %<CR>", { desc = " Checkout - :source %"})     -- Execution :source %
map("n", "<Leader>hv", ":cd ~/.config/nvim/<CR>", {})    -- Change directory to nvim root
map("n", "<Leader>hh", ":botright vertical help ", { silent = false })     -- Open help window
map("n", "<Leader>hm", ":make<CR>", {})      -- Execution :make

-- NvimTree controls
map("n", "<Leader>t", ":NvimTreeToggle<CR>", { desc = "NvimTree open/close"})
map("n", "<Leader>tu", ":NvimTreeFocus<CR>", { desc = "NvimTree open and focus file"})
map("n", "<Leader>tf", ":NvimTreeFindFile<CR>", { desc = "NvimTree find files"})
map("n", "<Leader>tr", ":NvimTreeRefresh<CR>", { desc = "NvimTree refresh the tree"})
map("n", "<Leader>ts", ":NvimTreeiResize ", { desc = "NvimTree window size adjust. input size real and relatively"})
map("n", "<Leader>tp", ":NvimTreeCollapseKeepBuffers<CR>", { desc = "NvimTree collapse window and open buffes"})
 
-- vim.g.netrw_winsize = 20
-- map("n", "<Leader>t", ":Vexplore<CR>", {})

-- system clipboard
map({ "n", "v" }, "<Leader>y", '"+y', { desc = "Copy to clipboard selected"})
map({ "n" }, "<Leader>Y", '"+y$', { desc = "Copy to clipboard from here to end of line"})
map("n", "<Leader>p", '"+p', { desc = "Paste from clipboard"})

-- Select word, block and movement
map({ "n", "v" }, "<Space>", "", { silent = true })      -- Visual mode
map("v", "K", ":m'<-2<CR>gv=gv", {}) -- Move blocks up of line
map("v", "J", ":m'>+1<CR>gv=gv", {}) -- Move blocks down of line

-- Tabs control
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "TAB : Last" })
map("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "TAB : Close Others" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "TAB : First" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "TAB : New" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "TAB : Next" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "TAB : Close" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "TAB : Previous" })

-- Windows control
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>=", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wc", "<C-W>c", { desc = "Delete Window", remap = true })

-- lazy
map("n", "<leader>l", "<cmd>:Lazy<cr>", { desc = "Lazy" })


-- better up/down
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map("n", "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-7>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-8>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-9>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-0>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
map("n", "<M-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<M-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<M-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<M-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<M-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<M-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- buffers
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
map(
  "n",
  "<leader>ur",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / clear hlsearch / diff update" }
)

map({ "n", "x" }, "gw", "*N", { desc = "Search word under cursor" })

-- toggle options
-- LazyVim.format.snacks_toggle():map("<leader>uf")
-- LazyVim.format.snacks_toggle(true):map("<leader>uF")
-- Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
-- Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
-- Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
-- Snacks.toggle.diagnostics():map("<leader>ud")
-- Snacks.toggle.line_number():map("<leader>ul")
-- Snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2, name = "Conceal Level" }):map("<leader>uc")
-- Snacks.toggle.option("showtabline", { off = 0, on = vim.o.showtabline > 0 and vim.o.showtabline or 2, name = "Tabline" }):map("<leader>uA")
-- Snacks.toggle.treesitter():map("<leader>uT")
-- Snacks.toggle.option("background", { off = "light", on = "dark" , name = "Dark Background" }):map("<leader>ub")
-- Snacks.toggle.dim():map("<leader>uD")
-- Snacks.toggle.animate():map("<leader>ua")
-- Snacks.toggle.indent():map("<leader>ug")
-- Snacks.toggle.scroll():map("<leader>uS")
-- Snacks.toggle.profiler():map("<leader>dpp")
-- Snacks.toggle.profiler_highlights():map("<leader>dph")
-- Snacks.toggle.zoom():map("<leader>wm"):map("<leader>uZ")
-- Snacks.toggle.zen():map("<leader>uz")
--
-- if vim.lsp.inlay_hint then
--   Snacks.toggle.inlay_hints():map("<leader>uh")
-- end
