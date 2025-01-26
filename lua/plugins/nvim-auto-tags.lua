return {
	"windwp/nvim-ts-autotag",
	opts = {
		enable = true,
		filetypes = {
			"html",
			"javascript",
			"typescript",
			"jsx",
			"tsx",
			"svelte",
			"vue",
		},
		autotag = {
			enable = true,
			disable = { "xml" },
			ignore_tags = {
				"area",
				"base",
				"br",
				"col",
				"embed",
				"hr",
				"img",
				"input",
				"link",
				"meta",
				"param",
				"source",
				"track",
				"wbr",
			},
			ignore_tags_with_attributes = {},
		},
		rename = {
			enable = true,
			timer = vim.g.ts_autotag_timeout,
			query = "all",
		},
	},
	config = function(_, opts)
		opts.autotag.enable_close = true
		opts.autotag.enable_close_on_slash = false
		opts.rename.enable = true
		opts.per_filetype = {
			["html"] = {
				autotag = {
					enable_close = false,
				},
			},
		}
		require("nvim-ts-autotag").setup(opts)
	end,
}
