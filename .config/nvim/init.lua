-- Neovim config

local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug('ellisonleao/gruvbox.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('lewis6991/gitsigns.nvim')
Plug('MeanderingProgrammer/render-markdown.nvim')

vim.call('plug#end')

require("config.mappings")
require("config.options")

require("plugins.treesitter")
require("plugins.indent-blankline")
require("plugins.gitsigns")
