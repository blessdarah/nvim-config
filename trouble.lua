return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		-- toggle
		{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle trouble" },
		-- toggle and jump to first item
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Toggle trouble workspace" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Toggle trouble document" },
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Toggle trouble quickfix" },
		{ "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Toggle trouble loclist" },
		-- jump to next item
		{ "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "Toggle trouble lsp_references" },
	},
}
