return {
	-- I recommend not installing this a dependency of oil as it isn't required
	-- until you open an oil buffer
	"FerretDetective/oil-git-signs.nvim",
	ft = "oil",
	---@module "oil_git_signs"
	---@type oil_git_signs.Config
	opts = {
		-- Show git status icons in the file browser
		show_text = true,
		-- Enable sign highlighting
		show_signs = true,
		-- Sign configuration
		signs = {
			add = "│",
			change = "│",
			delete = "│",
			topdelete = "▔",
			changedelete = "▔",
			untracked = "┆",
		},
		-- Enable line highlighting
		linehl = true,
		-- Enable numhl highlighting
		numhl = true,
		-- Enable word highlighting
		word_diff = false,
		-- Enable git blame integration
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol",
			delay = 300,
		},
	},
}
