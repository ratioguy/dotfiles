---- Fix background colour getting left by neovim in scrollback

-- Set colourscheme to gruvbox dark
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Make mouse copy from terminal
vim.o.mouse = "c"

-- Use system keyboard
vim.o.clipboard = "unnamedplus"

-- Show and highlight line number
vim.o.number = true
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

-- Autocomplete common actions
vim.cmd('inoremap { {}<Esc>ha')
vim.cmd('inoremap ( ()<Esc>ha')
vim.cmd('inoremap [ []<Esc>ha')
vim.cmd('inoremap " ""<Esc>ha')
vim.cmd("inoremap ' ''<Esc>ha")
vim.cmd('inoremap ` ``<Esc>ha')

-- Case insenitive searching
vim.o.ignorecase = true 

-- Set number width
vim.o.numberwidth = 1

-- Set relative number in normal mode only
vim.cmd('set relativenumber')
vim.cmd('au InsertEnter,CmdLineEnter * set norelativenumber | redraw')
vim.cmd('au InsertLeave,CmdlineLeave * set relativenumber')
