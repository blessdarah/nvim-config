-- This plugin allows you to interact with databases directly from Vim.
return {
	"tpope/vim-dadbod",
	dependencies = {
		"kristijanhusak/vim-dadbod-ui",
		"kristijanhusak/vim-dadbod-completion",
	},
	config = function()
		-- Set up DB UI toggle
		vim.api.nvim_set_keymap("n", "<Leader>db", ":DBUI<CR>", { noremap = true, silent = true })

		vim.g.dbs = {
			-- Add your database connection details here
			-- Example:
			-- connection is of the form below
			-- type can be mysql, postgres, sqlite, etc.
			-- {type}://{user}:{password}@{host}:{port}/{database}
			psql = "postgres://postgres:testuser@localhost:5432",
		}
	end,
}
