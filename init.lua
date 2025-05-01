-- require("lua.config.settings")
--require("lua.config.keymaps")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.augment_workspace_folders = {
	"~/coding/Practice/deno/my_project",
	"~/coding/frontend/remixjs/group-finance",
}

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("lazy-vim")
vim.cmd("colorscheme catppuccin")

vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})
