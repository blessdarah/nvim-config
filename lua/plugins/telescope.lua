return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				prompt_prefix = "🔍 ",
				selection_caret = "➤ ",
				entry_prefix = "  ",
				initial_mode = "insert",
				sorting_strategy = "ascending",
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						mirror = false,
						preview_width = 0.55,
						results_width = 0.8,
					},
					vertical = {
						mirror = false,
					},
				},
			},
		})
	end,
	keys = {
		{ "<leader>f", "<cmd>Telescope find_files theme=dropdown<cr>", desc = "Find Files" }, -- also dropdown or cursor or ivy
		{ "<leader>r", "<cmd>Telescope live_grep theme=dropdown<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers theme=dropdown<cr>", desc = "Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
		{ "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
		{ "<leader>fC", "<cmd>Telescope commands<cr>", desc = "Commands" },
		-- go to definition
		{ "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Go to Definition" },
		{ "gD", "<cmd>Telescope lsp_declarations<cr>", desc = "Go to Declaration" },
		{ "gi", "<cmd>Telescope lsp_implementations<cr>", desc = "Go to Implementation" },
		{ "gr", "<cmd>Telescope lsp_references<cr>", desc = "Go to References" },
		{ "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Git Status" },
		{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Git Commits" },
		{ "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Git Branches" },
		{ "<leader>ca", "<cmd>Telescope quickfix<cr>", desc = "Quick Fix" },

		-- diagnostics
		{ "<leader>bd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
		-- buffer diagnostics
		-- { "<leader>e", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Buffer Diagnostics" },
		-- next diagnostic
		{ "[e", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Next Diagnostic" },
		{ "]e", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Previous Diagnostic" },
	},
}
