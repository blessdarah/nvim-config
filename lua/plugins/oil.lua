-- Oil nvim allows you to manage and browse files in a more user-friendly way.
-- Files are treated as buffers

return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	setup = function()
		require("oil").setup()
		vim.cmd([[colorscheme oil]]) -- set the theme
		vim.cmd([[set background=dark]])
		vim.cmd([[set termguicolors]])
	end,
	keys = {
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
	},
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
