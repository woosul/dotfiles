# List of Neovim shortcut keys

### Sample image
![screenshot from Memnoc](https://user-images.githubusercontent.com/74842863/233617312-4cc9228a-0b2a-4105-bf16-4f4d31aaa504.png)

### Definition of  keys
- Global/local **leader** key : **" "** : descrive by '%'

### File handling
> - <span style="color:#00aaee">Ctrl-s</span> - :write | Save file 
> - <span style="color:#00aaee">% ga</span>   - :qa |  Quit all files
> - <span style="color:#00aaee">% wq</span>   - :wqa | Save and Quit all files
> - <span style="color:#00aaee">% fn</span>   - :enew | Create new file

### Markdown preview
> - <span style="color:#00aaee">Alt-p</span>  - : MarkdownPreviewToggle | Markdown document preview start/stop

### leader movements
> - <span style="color:#00aaee">% hs</span>   - :source % |  Execution :source %
> - <span style="color:#00aaee">% hv</span>   - :cd ~/.config/nvim/ | Change directory to nvim root
> - <span style="color:#00aaee">% hh</span>   - :botright vertical help {variable} | Open help window
> - <span style="color:#00aaee">% hm</span>   - :make | Execution :make

### NvimTree controls
> - <span style="color:#00aaee">% t</span>    - :NvimTreeToggle | NvimTree open/close
> - <span style="color:#00aaee">% tu</span>   - :NvimTreeFocus | NvimTree open and focus file
> - <span style="color:#00aaee">% tf</span>   - :NvimTreeFindFile | NvimTree find files
> - <span style="color:#00aaee">% tr</span>   - :NvimTreeRefres | NvimTree refresh the tree
> - <span style="color:#00aaee">% ts</span>   - :NvimTreeiResize | NvimTree window size adjust. input size real and relatively
> - <span style="color:#00aaee">% tp</span>   - :NvimTreeCollapseKeepBuffers | NvimTree collapse window and open buffers
 
### system clipboard
> - <span style="color:#00aaee">% y</span>    - +y | Copy to clipboard selected
> - <span style="color:#00aaee">% Y</span>    - +y$ | Copy to clipboard from here to end of line
> - <span style="color:#00aaee">% p</span>    - +p | Paste from clipboard

### Select word, block and movement
> - <span style="color:#00aaee">% v</span>    - (space) | Visual mode
> - <span style="color:#00aaee">% K</span>    - :m'<-2 + gv=gv | Move blocks up of line
> - <span style="color:#00aaee">% J</span>    - :m'>+1 + gv=gv |  Move blocks down of line

### Tabs control
> - <span style="color:#00aaee">% (tab) l</span>     - :tablast | TAB : to last
> - <span style="color:#00aaee">% (tab) o</span>     - :tabonly | TAB : close Others
> - <span style="color:#00aaee">% (tab) f</span>     - :tabfirst | TAB : to first
> - <span style="color:#00aaee">% (tab) (tab)</span>     - :tabnew | TAB : make new tab
> - <span style="color:#00aaee">% (tab) ]</span>     - :tabnext | TAB : to next
> - <span style="color:#00aaee">% (tab) d</span>     - :tabclose | TAB : close tab
> - <span style="color:#00aaee">% (tab) [</span>     - :tabprevious | TAB : to previous

### Window control
> - <span style="color:#00aaee">% -</span>      - (C-W)s | Split Window horizontal below
> - <span style="color:#00aaee">% =</span>      - (C-W)v | Split Window vertical right
> - <span style="color:#00aaee">% wc</span>     - (C-W)c | Close Window

### Lazy
> - <span style="color:#00aaee">% l</span>      - :Lazy | Lazy open window

### better up/down
> - <span style="color:#00aaee">j</span>        - v:count == 0 ? 'gj' : 'j' | Down 
> - <span style="color:#00aaee">(Down)"</span>  - v:count == 0 ? 'gj' : 'j' | Down
> - <span style="color:#00aaee">k</span>        - v:count == 0 ? 'gk' : 'k' | Up
> - <span style="color:#00aaee">(Up)</span>     - v:count == 0 ? 'gk' : 'k' | Up

### Move to window using the (ctrl) hjkl keys
> - <span style="color:#00aaee"> Ctrl-h </span>     - (C-w) h | Go to left window
> - <span style="color:#00aaee"> Ctrl-j </span>     - (C-w) j | Go to lower window
> - <span style="color:#00aaee"> Ctrl-k </span>     - (C-w) k | Go to upper window
> - <span style="color:#00aaee"> Crtl-l </span>     - (C-w) l | Go to right window

### Resize window using (ctrl) arrow keys
> - <span style="color:#00aaee"> Ctrl-7 </span>     - :resize +2 | Increase window height
> - <span style="color:#00aaee"> Ctrl-8 </span>     - :resize -2 | Decrease window height
> - <span style="color:#00aaee"> Ctrl-9 </span>     - :vertical resize -2 | Decrease window width
> - <span style="color:#00aaee"> Ctrl-0 </span>     - :vertical resize +2 | Increase window width

### Move Lines
> - <span style="color:#00aaee"> Alt-j </span>      - n:m .+1i(cr)== | Move down
> - <span style="color:#00aaee"> Alt-k </span>      - n:m .-2(cr)== | Move up
> - <span style="color:#00aaee"> Alt-j </span>      - v:m .+1(cr)==gi | Move down
> - <span style="color:#00aaee"> Alt-k </span>      - v:m .-2(cr)==gi | Move up
> - <span style="color:#00aaee"> Alt-j </span>      - i:m '>+1(cr)gv=gv | Move down
> - <span style="color:#00aaee"> Alt-k </span>      - i:m '<-2(cr)gv=gv | Move up

### buffers
> - <span style="color:#00aaee"> % bb </span>       - :e # | Switch to Other Buffer

### Clear search with 
> - <span style="color:#00aaee"> (esc) </span>      - :noh | Escape and clear hlsearch
> - <span style="color:#00aaee"> % ur</span>        - :nohlsearch (Bar) diffupdate (Bar) normal! (C-L) | Redraw / clear hlsearch / diff update
> - <span style="color:#00aaee">  gw </span>        - *N" | Search word under cursor
