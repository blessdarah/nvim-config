vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.g.augment_workspace_folders = {
	-- frontend projects
	"~/Coding/frontend/remixjs/group-finance",
	"~/Coding/frontend/strapi/client", -- Darah-B studios site with strapi backend and remixjs frontend

	-- laravel projects
	"~/Coding/Laravel/UBaCyberSecurity",

	-- others
	"~/Coding/Practice/php/internship",
}

require("lazy-vim")
vim.cmd("colorscheme catppuccin")

vim.filetype.add({
	extension = {
		["http"] = "http",
	},
})
