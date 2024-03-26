return {
	{
		"bluz71/vim-nightfly-guicolors",
		"helbing/aura.nvim",
		"sainnhe/everforest",
		"morhetz/gruvbox",
		"nordtheme/vim",
		"rebelot/kanagawa.nvim",
		"bluz71/vim-nightfly-guicolors", -- preferred colorscheme
		"ajmwagar/vim-deus",
		"lifepillar/vim-solarized8",
		"jsit/toast.vim",
		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
}
