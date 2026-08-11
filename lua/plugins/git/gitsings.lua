return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = true,
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			conflict = { text = "" },
			-- diff = { text = "±" },
			-- done = { text = "✓" },
			-- remove = { text = "-" },
			-- rename = { text = "👅" },
		},
	},
}
