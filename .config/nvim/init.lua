-- Neovim config

-- Install vim-plug
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

-- Define stuff
local vim = vim
local Plug = vim.fn['plug#']

-- Plugins
vim.call('plug#begin')

Plug('ellisonleao/gruvbox.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('lewis6991/gitsigns.nvim')
Plug('MeanderingProgrammer/render-markdown.nvim')
Plug('preservim/nerdtree')

vim.call('plug#end')

-- Require plugin configs
require("config.mappings")
require("config.options")
require("plugins.treesitter")
require("plugins.indent-blankline")
require("plugins.gitsigns")
