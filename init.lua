-- require("lua.config.settings")
--require("lua.config.keymaps")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("lazy-vim")
vim.cmd("colorscheme nord")
