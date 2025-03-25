-- local vim = vim
local opt = vim.opt -- for concisenese

vim.cmd("let g:netrw_liststyle = 3")

opt.number = true
opt.relativenumber = true
opt.scrolloff = 10

-- use global status line
opt.laststatus = 4

opt.ignorecase = true
opt.smartcase = true

-- use number of spaces to insert a <Tab>
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.softtabstop = 2 -- 2 spaces
opt.shiftwidth = 2 -- 2 spaces for indents
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one.
-- opt.smartindent = true

opt.swapfile = false
opt.wrap = false -- disable line wrapping

-- highlight the line number of the cursor
opt.guicursor = "n-v-c-sm:block,i-ci-ve:hor20,r-cr-o:ver25"

opt.cursorline = true -- Highlight the current line
opt.cursorlineopt = "both"

opt.updatetime = 250
opt.timeoutlen = 300

opt.mouse = "a" -- Enable mouse in all modes
opt.mousefocus = true
-- opt.clipboard = "unnamedplus"

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- search setting
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.hlsearch = true -- Enable search highlighting

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- vim.opt.cmdheight = 0
vim.g.mkdp_browser = "Zen Browser"
