return {
	"akinsho/git-conflict.nvim",
	tag = "*",
	config = function()
		require("git-conflict").setup({
			default_mappings = {
				ours = "o",
				theirs = "t",
				none = "0",
				both = "b",
				next = "n",
				prev = "p",
			},
		})
	end,
}
