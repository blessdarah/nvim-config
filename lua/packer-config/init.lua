return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Packer
  use "EdenEast/nightfox.nvim" -- Color theme

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

  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin 
  use 'onsails/lspkind.nvim' -- Show icons on popup

  -- PHP config
  use 'tree-sitter/tree-sitter-php'
  -- End php config


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

  use {
      'phaazon/hop.nvim',
      branch = 'v1', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    } 

      
    use 'vimwiki/vimwiki'                                   -- Vim wiki
    use 'mattn/emmet-vim'
    use 'jwalton512/vim-blade'
    use 'tpope/vim-abolish'
    
    use { "ellisonleao/gruvbox.nvim" }                      -- gruvbox color theme
end)
