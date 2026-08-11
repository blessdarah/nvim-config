return {
	{
		"sainnhe/everforest",
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme everforest]])
		end,
	},
}
