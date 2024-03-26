return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
	},
	config = true,

	-- Neogit plugin
	-- vim.keymap.set("n", "<leader>ng", ":Neogit kind=split<CR>"),
	vim.keymap.set("n", "<leader>ng", ":Neogit <CR>"),
	-- vim.keymap.set("n", "<leader>ngf", ":Neogit kind=floating<CR>")
}
