return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		picker = {
			sources = {
				files = { hidden = true },
				grep = { hidden = true },
			},
		},
	},
	keys = {
		-- File picker
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		-- Live grep
		{
			"<leader>r",
			function()
				Snacks.picker.grep()
			end,
			desc = "Live Grep",
		},
		-- Buffer picker
		{
			"<leader>f",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		-- Help tags
		{
			"<leader>fh",
			function()
				Snacks.picker.help()
			end,
			desc = "Help Tags",
		},
		-- Keymaps
		{
			"<leader>fk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Keymaps",
		},
		-- Commands
		{
			"<leader>fC",
			function()
				Snacks.picker.commands()
			end,
			desc = "Commands",
		},

		-- LSP pickers
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "Go to Definition",
		},
		{
			"gD",
			function()
				Snacks.picker.lsp_declarations()
			end,
			desc = "Go to Declaration",
		},
		{
			"gi",
			function()
				Snacks.picker.lsp_implementations()
			end,
			desc = "Go to Implementation",
		},
		{
			"gr",
			function()
				Snacks.picker.lsp_references()
			end,
			desc = "Go to References",
		},

		-- Git pickers
		{
			"<leader>gs",
			function()
				Snacks.picker.git_status()
			end,
			desc = "Git Status",
		},
		{
			"<leader>gc",
			function()
				Snacks.picker.git_log()
			end,
			desc = "Git Commits",
		},
		{
			"<leader>gb",
			function()
				Snacks.picker.git_branches()
			end,
			desc = "Git Branches",
		},

		-- Quickfix
		{
			"<leader>ca",
			function()
				Snacks.picker.qflist()
			end,
			desc = "Quick Fix",
		},

		-- Diagnostics
		{
			"<leader>bd",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Diagnostics",
		},
		{
			"[e",
			function()
				vim.diagnostic.jump({ count = -1, float = true })
			end,
			desc = "Previous Diagnostic",
		},
		{
			"]e",
			function()
				vim.diagnostic.jump({ count = 1, float = true })
			end,
			desc = "Next Diagnostic",
		},
	},
}
