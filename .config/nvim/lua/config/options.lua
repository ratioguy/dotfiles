-- My neovim options

-- Fix background colour getting left by neovim in scrollback
vim.o.hidden = true

-- Set colourscheme to gruvbox dark
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Make mouse copy from terminal
-- vim.cmd('set mouse=c')
vim.o.mouse = "c"
-- Use system keyboard
vim.o.clipboard = "unnamedplus"

-- Show and highlight line number
vim.o.number = true
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

-- Autocomplete common actions
vim.cmd('inoremap { {<Esc>ha')
vim.cmd('inoremap ( (<Esc>ha')
vim.cmd('inoremap [ [<Esc>ha')
vim.cmd('inoremap " ""<Esc>ha')
vim.cmd("inoremap ' ''<Esc>ha")
vim.cmd('inoremap ` ``<Esc>ha')

-- Case insenitive searching
vim.o.ignorecase = true 

-- Set number width
vim.o.numberwidth = 1
