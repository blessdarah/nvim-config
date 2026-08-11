return {
	"echasnovski/mini.nvim",
	version = "*",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		-- Surround operations (replaces nvim-surround)
		require("mini.surround").setup({
			mappings = {
				add = "sa",
				delete = "sd",
				find = "sf",
				find_left = "sF",
				highlight = "sh",
				replace = "sr",
				update_n_lines = "sn",
			},
		})

		-- Comment toggling (replaces Comment.nvim)
		require("mini.comment").setup({
			options = {
				custom_commentstring = function()
					return require("ts_context_commentstring.internal").calculate_commentstring()
						or vim.bo.commentstring
				end,
			},
		})

		-- Auto-pairs (replaces nvim-autopairs + nvim-ts-autotag)
		require("mini.pairs").setup({
			modes = { insert = true, command = true, terminal = false },
			mappings = {
				["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
				["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
				["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },
				['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
				["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^\\].", register = { cr = false } },
				["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\].", register = { cr = false } },
			},
		})

		-- Extended text objects (bonus)
		require("mini.ai").setup({
			custom_textobjects = nil,
			n_lines = 500,
			search_method = "cover_or_next",
		})

		-- Jump navigation (replaces flash.nvim)
		require("mini.jump2d").setup({
			mappings = {
				start_jumping = "s",
			},
			view = {
				dim = true,
				n_steps_ahead = 0,
			},
		})
	end,
}
