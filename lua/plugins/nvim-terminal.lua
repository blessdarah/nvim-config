return {
	"s1n7ax/nvim-terminal",
	config = function()
		vim.o.hidden = true
		require("nvim-terminal").setup({
			window = {
				height = 7,
			},
		})
	end,

	-- key maps
	vim.keymap.set("n", "<leader>t", ':lua NTGlobal["terminal"]:toggle()<cr>'),
	vim.keymap.set("n", "<leader>1", ':lua NTGlobal["terminal"]:open(1)<cr>'),
	vim.keymap.set("n", "<leader>+", ':lua NTGlobal["window"]:change_height(2)<cr>'),
	vim.keymap.set("n", "<leader>-", ':lua NTGlobal["window"]:change_height(-2)<cr>'),
	vim.keymap.set("t", ";;", "<C-\\><C-n>"), -- Map ;; to escape terminal mode
}
