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

-- Map Fzf
map("n", "<S-f>", "<cmd>FZF<CR>", { desc = "execute fzf" })

-- Stop some bindings certain keys from copying to clipboard
vim.keymap.set({ 'n', 'x' }, '<leader>y', '"+y', { desc = 'Copy from system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>Y', '"+yg_', { desc = 'Copy from system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard' })
vim.keymap.set({ 'n', 'x' }, '<leader>P', '"+P', { desc = 'Paste from system clipboard' })
