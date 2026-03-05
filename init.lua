---@diagnostic disable: undefined-global
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("lazy-vim")

vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})

-- Set \ to reverse character search after all plugins are loaded
vim.keymap.set("n", "\\", ",", { noremap = true })
