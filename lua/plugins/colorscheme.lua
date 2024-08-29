return {
	{
		"morhetz/gruvbox",
		"bluz71/vim-nightfly-guicolors",
		"helbing/aura.nvim",
		"sainnhe/everforest",
		"nordtheme/vim",
		"rebelot/kanagawa.nvim",
		"bluz71/vim-nightfly-guicolors", -- preferred colorscheme
		"ajmwagar/vim-deus",
		"lifepillar/vim-solarized8",
		"jsit/toast.vim",
		"navarasu/onedark.nvim",
		{
			"maxmx03/solarized.nvim",
			lazy = false,
			priority = 1000,
			config = function()
				vim.o.background = "dark" -- or 'light'
			end,
		},
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme solarized]])
		end,
	},
}
