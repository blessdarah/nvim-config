local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.mapleader = ','

map('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', opts)

-- REMAP ESC KEY

map('i', ';;', '<Esc>', opts)

map('n', '<C-H>', '<C-W><C-H>', opts)
map('n', '<C-J>', '<C-W><C-J>', opts)
map('n', '<C-K>', '<C-W><C-K>', opts)
map('n', '<C-L>', '<C-W><C-L>', opts)


map('v', 'J', ":m '>+1<CR>gv=gv", opts)
map('v', 'K', ":m '<-2<CR>gv=gv", opts)


	-- clear default highlight after searching a string
map('n', ',c', ':nohlsearch<CR>', opts)
map('n', ',w', ':w<CR>', opts)

	-- create new lines before and after line respectively
map('n', 'oo', 'o<Esc>k', opts)
map('n', 'OO', 'O<Esc>j', opts)
map('n', ',n', 'i<CR><Esc>', opts)
map('n', ',pi', 'i<CR>', opts)

map('n', ',f', ':Telescope find_files<CR>', opts)
map('n', ',r', ':Telescope live_grep<CR>', opts)
map('n', ',b', ':Telescope buffers<CR>', opts)


