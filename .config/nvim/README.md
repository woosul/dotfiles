# List of Neovim shortcut keys

### Sample image
![screenshot from Memnoc](https://user-images.githubusercontent.com/74842863/233617312-4cc9228a-0b2a-4105-bf16-4f4d31aaa504.png)

### Definition of  keys
- Global/local **leader** key : **" "** : descrive by '%'

#### File handling
> - <font color="#00aaee">Ctrl-s</font> :write | Save file 
> - <font color="#00aaee">% ga</font>   :qa |  Quit all files
> - <font color="#00aaee">% wq</font>   :wqa | Save and Quit all files

### Markdown preview
> - <font color="#00aaee">Alt-p</font>  : MarkdownPreviewToggle | Markdown document preview start/stop

### leader movements
> - <font color="#00aaee">% hs</font>   :source % |  Execution :source %
> - <font color="#00aaee">% hv</font>   :cd ~/.config/nvim/ | Change directory to nvim root
> - <font color="#00aaee">% hh</font>   :botright vertical help {variable} | Open help window
> - <font color="#00aaee">% hm</font>   :make | Execution :make

### NvimTree controls
> - <font color="#00aaee">% t</font>    :NvimTreeToggle | NvimTree open/close
> - <font color="#00aaee">% tu</font>   :NvimTreeFocus | NvimTree open and focus file
> - <font color="#00aaee">% tf</font>   :NvimTreeFindFile | NvimTree find files
> - <font color="#00aaee">% tr</font>   :NvimTreeRefres | NvimTree refresh the tree
> - <font color="#00aaee">% ts</font>   :NvimTreeiResize | NvimTree window size adjust. input size real and relatively
> - <font color="#00aaee">% tp</font>   :NvimTreeCollapseKeepBuffers | NvimTree collapse window and open buffers
 
### system clipboard
> - <font color="#00aaee">% y</font>    +y | Copy to clipboard selected
> - <font color="#00aaee">% Y</font>    +y$ | Copy to clipboard from here to end of line
> - <font color="#00aaee">% p</font>    +p | Paste from clipboard

### Select word, block and movement
> - <font color="#00aaee">% map({ "n", "v" }, "<Space>"</font> , "", { silent = true })      -- Visual mode
> - <font color="#00aaee">% map("v", "K"</font> , ":m'<-2<CR>gv=gv", {}) -- Move blocks up of line
> - <font color="#00aaee">% map("v", "J"</font> , ":m'>+1<CR>gv=gv", {}) -- Move blocks down of line

### Tabs control
> - <font color="#00aaee">%ap("n", "<leader><tab>l</font> , "<cmd>tablast<cr>", { desc = "TAB : Last" })
> - <font color="#00aaee">%ap("n", "<leader><tab>o</font> , "<cmd>tabonly<cr>", { desc = "TAB : Close Others" })
> - <font color="#00aaee">%apr><tab>d</font>
> - <font color="#00aaee">%ap("n", "<leader>-</font> """, "<C-W>s", { desc = "Split Window Below", remap = true })
> - <font color="#00aaee">%ap("n", "<leader>|</font> ", "<C-W>v", { desc = "Split Window Right", remap = true })
> - <font color="#00aaee">%ap("n", "<leader>wd</font> ", "<C-W>c", { desc = "Delete Window", remap = true })

### lazy
> - <font color="#00aaee">%ap("n", "<leader>l</font> ", "<cmd>:Lazy<cr>", { desc = "Lazy" })

### new file
> - <font color="#00aaee">%ap("n", "<leader>fn</font> ", "<cmd>enew<cr>", { desc = "New File" })

### better up/down
> - <font color="#00aaee">%ap("n", "j</font> ", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
> - <font color="#00aaee">%ap("n", "<Down>"</font> , "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
> - <font color="#00aaee">%ap("n", "k</font> ", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
> - <font color="#00aaee">%ap("n", "<Up></font> ", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

### Move to window using the <ctrl> hjkl keys
> - <font color="#00aaee">%ap("n", "<C-h></font> ", "<C-w>h", { desc = "Go to left window", remap = true })
> - <font color="#00aaee">%ap("n", "<C-j></font> ", "<C-w>j", { desc = "Go to lower window", remap = true })
> - <font color="#00aaee">%ap("n", "<C-k></font> ", "<C-w>k", { desc = "Go to upper window", remap = true })
> - <font color="#00aaee">%ap("n", "<C-l></font> ", "<C-w>l", { desc = "Go to right window", remap = true })

### Resize window using <ctrl> arrow keys
> - <font color="#00aaee">%ap("n", "<C-7></font> ", "<cmd>resize +2<cr>", { desc = "Increase window height" })
> - <font color="#00aaee">%ap("n", "<C-8></font> ", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
> - <font color="#00aaee">%ap("n", "<C-9></font> ", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
> - <font color="#00aaee">%ap("n", "<C-0></font> ", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

### Move Lines
> - <font color="#00aaee">%ap("n", "<M-j>"</font> , "<cmd>m .+1<cr>==", { desc = "Move down" })
> - <font color="#00aaee">%ap("n", "<M-k></font> ", "<cmd>m .-2<cr>==", { desc = "Move up" })
> - <font color="#00aaee">%ap("i", "<M-j></font> ", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
> - <font color="#00aaee">%ap("i", "<M-k></font> ", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
> - <font color="#00aaee">%ap("v", "<M-j></font> ", ":m '>+1<cr>gv=gv", { desc = "Move down" })
> - <font color="#00aaee">%ap("v", "<M-k></font> ", ":m '<-2<cr>gv=gv", { desc = "Move up" })

### buffers
> - <font color="#00aaee">%ap("n", "<leader>bb</font> ", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
> - <font color="#00aaee">%ap("n", "<leader>`</font> ", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

### Clear search with <esc>
> - <font color="#00aaee">%ap({ "i", "n" }, "<esc></font> ", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
map(
  "n",
> - <font color="#00aaee">leader>ur</font> ",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / clear hlsearch / diff update" }
)

> - <font color="#00aaee">ap({ "n", "x</font> " }, "gw", "*N", { desc = "Search word under cursor" })
