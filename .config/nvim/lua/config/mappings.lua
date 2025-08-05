-- My bindings
local map = vim.keymap.set

-- Ctrl + hjkl to move arrows in insert mode
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Bind nerdtree to Ctrl + n
map("n", "<C-n>", "<cmd>NERDTreeToggle<CR>", { desc = "Toggle nerdtree window" })

-- Map nohlsearch
map("n", "?", "<cmd>nohlsearch<CR>", { desc = "execute nohlsearch" })
