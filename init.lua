require('settings')
require('mappings')
require('colorscheme-config')
require('packer-config')
require('nvim-tree-config')
require("nvim-lsp-installer").setup {
  automatic_installation = true
}
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
require('treesitter-config')
require('treesitter-refactor-config')
require('telescope-config')
require('nvim-autopairs').setup{}
require('lualine').setup()
require("commentary").setup({})
require('nvim-terminal-config')
require('lsp-format-config')
require('emmet-config')
-- require('indent-guides-config')
require('indent-blankline-config')
require('dashboard-config')
require('vim-ctrlspace-config')
require('lsp-config-ts-utils')
