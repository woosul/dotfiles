local vim = vim
local opt = vim.opt     -- for concisenese

vim.cmd("let g:netrw_liststyle = 3")

opt.number = true
opt.relativenumber = true
opt.scrolloff = 10

-- use global status line
opt.laststatus =4

opt.ignorecase = true
opt.smartcase = true

-- use number of spaces to insert a <Tab>
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = false
opt.autoindent = true
-- opt.smartindent = true

opt.swapfile = false
opt.wrap = false      -- disable line wrapping

opt.splitright = true
opt.splitbelow = true

-- highlight the line number of the cursor
opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
opt.cursorline = true
opt.cursorlineopt = "number"

opt.updatetime = 250
opt.timeoutlen = 300

-- vim.opt.mouse = ""

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- search setting
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- vim.opt.cmdheight = 0
vim.g.mkdp_browser = "Zen Browser"

