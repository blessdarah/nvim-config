vim.g.mapleader = ","

vim.g.CtrlSpaceDefaultMappingKey = "<C-space> "
-- Automatically save workspace
vim.g.CtrlSpaceLoadLastWorkspaceOnStart = 1
vim.g.CtrlSpaceSaveWorkspaceOnSwitch = 1
vim.g.CtrlSpaceSaveWorkspaceOnExit = 1

-- vim.g.indent_guides_enable_on_vim_startup = 1
local keymap = vim.keymap

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

-- keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")
-- keymap.set("n", "<leader>e", ":NeoTreeFocusToggle<CR>")

-- Telescope
keymap.set("n", ",f", ":Telescope find_files<CR>")
keymap.set("n", ",r", ":Telescope live_grep<CR>")
keymap.set("n", ",b", ":Telescope buffers<CR>")

-- nvim terminal key binding

-- local dap = require("dap")
--
-- -- Set keymaps to control the debugger
-- vim.keymap.set("n", "<F5>", dap.continue)
-- vim.keymap.set("n", "<F10>", dap.step_over)
--
-- -- vim.keymap.set("n", "<F11>", dap.step_into)
-- vim.keymap.set("n", "<leader>si", dap.step_into)
-- vim.keymap.set("n", "<F12>", dap.step_out)
-- vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
-- vim.keymap.set("n", "<leader>B", function()
-- dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
-- end)

-- vim.keymap.set("n", "<leader>ui", require("dapui").toggle)

-- vim.g.codeium_disable_bindings = 1 -- disable codeium keybindings

-- Folding with ufo
-- vim.o.foldcolumn = "1" -- '0' is not bad
-- vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true
--
-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
-- vim.keymap.set("n", "zR", require("ufo").openAllFolds)
-- vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
