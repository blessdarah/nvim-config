return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	view_options = {
		is_hidden_file = function(name, bufnr)
			local m = name:match("^%.")
			local gitignore = vim.fn.system("git check-ignore -q " .. name) == 0
			return m ~= nil or gitignore
		end,
	},
	config = function()
		require("oil").setup(require("oil.config").opts)
		-- remove the --float flag if you want to use the default behavior
		vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>Oil --float<cr>", { noremap = true, silent = true })
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		vim.keymap.set("n", "q", function()
			require("oil").close()
		end, { desc = "Close Oil window" })
	end,
}
