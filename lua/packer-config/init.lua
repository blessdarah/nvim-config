return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use "EdenEast/nightfox.nvim" -- Packer

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  -- Tree sitter configuration
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'theHamsta/nvim-treesitter-pairs'

  -- Auto complete packages for nvim
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  use 'williamboman/nvim-lsp-installer'

 --For vsnip users.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin 
  use 'onsails/lspkind.nvim' -- Show icons on popup

  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'windwp/nvim-autopairs'
  use 'shoukoo/commentary.nvim'

  -- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- Terminal
  use {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
  }
  

  use "lukas-reineke/lsp-format.nvim"
  use "glepnir/indent-guides.nvim"

  use "lukas-reineke/indent-blankline.nvim"

  use 'glepnir/dashboard-nvim'

  use 'vim-ctrlspace/vim-ctrlspace'
end)
