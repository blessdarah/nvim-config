-- require("lua.config.settings")
--require("lua.config.keymaps")
require("lazy-vim")
vim.cmd("colorscheme nord")
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.php",
	command = "silent !blade-formatter --write resources/**/*.blade.php",
})
