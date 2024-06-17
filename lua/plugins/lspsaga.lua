return {
	"nvimdev/lspsaga.nvim",
	config = function()
		require("lspsaga").setup({

			-- set keybinds
			vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>"), -- show definition, references
			vim.keymap.set("n", "gD", "<cmd>Lspsaga goto_definition<CR>"), -- go to definition
			vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>"), -- see definition and make edits in window
			vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>"), -- go to implementation
			vim.keymap.set("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>"), -- peek type definition
			vim.keymap.set("n", "gT", "<cmd>Lspsaga goto_type_definition<CR>"), -- Go to type definition
			vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>"), -- See available code actions

			vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>"), -- smart rename
			vim.keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>"), -- show  diagnostics for line
			vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>"), -- show diagnostics for cursor
			vim.keymap.set("n", "<leader>bd", "<cmd>Lspsaga show_buf_diagnostics<CR>"), -- show buffer diagnostics

			vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>"), -- jump to previous diagnostic in buffer
			vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>"), -- jump to next diagnostic in buffer

			vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>"), -- show documentation for what is under cursor
			vim.keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>"), -- see outline on right hand side
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional,
		"nvim-tree/nvim-web-devicons", -- optional
	},
}
