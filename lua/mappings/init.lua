local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.mapleader = ','

-- emmet config
vim.g.user_emmet_leader_key=','


map('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', opts)
map('n', '<leader>v', ':HopWord<CR>', opts)
map('n', '<leader>l', ':HopLine<CR>', opts)
map('n', '<space>c', ':HopChar1<CR>', opts)

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
map('n', ',w', ':wa!<CR>', opts)

	-- create new lines before and after line respectively
map('n', 'oo', 'o<Esc>k', opts)
map('n', 'OO', 'O<Esc>j', opts)
map('n', ',n', 'i<CR><Esc>', opts)
map('n', ',pi', 'i<CR>', opts)

map('n', ',f', ':Telescope find_files<CR>', opts)
map('n', ',r', ':Telescope live_grep<CR>', opts)
map('n', ',b', ':Telescope buffers<CR>', opts)

-- nvim terminal key binding
map('n', '<leader>t', ':lua NTGlobal["terminal"]:toggle()<cr>', opts)
map('n', '<leader>1', ':lua NTGlobal["terminal"]:open(1)<cr>', opts)
map('n', '<leader>+', ':lua NTGlobal["window"]:change_height(2)<cr>', opts)
map('n', '<leader>-', ':lua NTGlobal["window"]:change_height(-2)<cr>', opts)


-- Exit from terminal in insert mode
-- map('i', ',,', '<C-\\><C-n>', opts)
-- map('i', ',,', '<C-\\><C-n>', opts)



