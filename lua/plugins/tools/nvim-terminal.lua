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
	keys = {
		{ "<leader>t", ':lua NTGlobal["terminal"]:toggle()<cr>', desc = "Toggle terminal" },
		{ "<leader>1", ':lua NTGlobal["terminal"]:open(1)<cr>', desc = "Open terminal 1" },
		{ "<leader>+", ':lua NTGlobal["window"]:change_height(2)<cr>', desc = "Increase terminal height" },
		{ "<leader>-", ':lua NTGlobal["window"]:change_height(-2)<cr>', desc = "Decrease terminal height" },
		{ ";;", "<C-\\><C-n>", mode = "t", desc = "Exit terminal mode" },
	},
}
