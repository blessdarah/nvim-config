return {
	{
		"sainnhe/everforest",
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		"folke/tokyonight.nvim",
		"thesimonho/kanagawa-paper.nvim",
		"shaunsingh/nord.nvim",
		"wadackel/vim-dogrun",
		"daddye/soda.vim",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme everforest]])
		end,
	},
}
