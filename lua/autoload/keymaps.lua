vim.g.mapleader = ","

-- Define a command to copy the relative path
vim.api.nvim_create_user_command("CopyRelativePath", function()
	-- Get the relative path and set it to the clipboard
	local relative_path = vim.fn.expand("%:p:~")
	vim.fn.setreg("+", relative_path)
	print("Copied relative path: " .. relative_path) -- Optional: Print a message
end, {})

vim.g.CtrlSpaceDefaultMappingKey = "<C-space> "
-- Automatically save workspace
vim.g.CtrlSpaceLoadLastWorkspaceOnStart = 1
vim.g.CtrlSpaceSaveWorkspaceOnSwitch = 1
vim.g.CtrlSpaceSaveWorkspaceOnExit = 1

-- vim.g.indent_guides_enable_on_vim_startup = 1
local keymap = vim.keymap

-- Define keymap for copy relative path
keymap.set("n", "<leader>cp", ":CopyRelativePath<CR>")

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- general keykeymaps
keymap.set("i", ";;", "<Esc>")
keymap.set("i", "jk", "<Esc>")

keymap.set("i", "/*", "/**/<left><left>")
keymap.set("n", "<Tab>", ":bnext <CR>")
keymap.set("n", "<S-Tab>", ":bprevious <CR>")

-- emmet config
vim.g.user_emmet_leader_key = ","

keymap.set("n", "<C-H>", "<C-W><C-H>")
keymap.set("n", "<C-J>", "<C-W><C-J>")
keymap.set("n", "<C-K>", "<C-W><C-K>")
keymap.set("n", "<C-L>", "<C-W><C-L>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--clear default highlight after searching a string
keymap.set("n", ",c", ":nohlsearch<CR>")

-- create new lines before and after line respectively
keymap.set("n", "oo", "o<Esc>k")
keymap.set("n", "OO", "O<Esc>j")
keymap.set("n", ",n", "i<CR><Esc>")
keymap.set("n", ",pi", "i<CR>")

-- Telescope
keymap.set("n", ",f", ":Telescope find_files<CR>")
keymap.set("n", ",r", ":Telescope live_grep<CR>")
keymap.set("n", ",b", ":Telescope buffers<CR>")
