-- Neovim config

local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug('ellisonleao/gruvbox.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('lukas-reineke/indent-blankline.nvim')

vim.call('plug#end')

require("config.mappings")
require("config.options")

require("plugins.treesitter")
require("plugins.indent-blankline")
