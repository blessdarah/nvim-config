-- Oil nvim allows you to manage and browse files in a more user-friendly way.
-- Files are treated as buffers

return {
	"stevearc/oil.nvim",
	-- Optional dependencies
	dependencies = {
		{ "echasnovski/mini.icons", opts = {} },
		{
			"FerretDetective/oil-git-signs.nvim",
			ft = "oil",
		},
	},
	---@module 'oil'
	---@type oil.SetupOpts
	setup = function()
		require("oil").setup({
			view_options = {
				-- show_hidden = true, -- Show hidden files
				show_git_status = true, -- Enable Git status integration
			},
			keymaps = {
				["g?"] = "actions.show_help",
				["<CR>"] = "actions.select",
				["<C-s>"] = "actions.select_vsplit",
				["<C-h>"] = "actions.select_split",
				["<C-t>"] = "actions.select_tab",
				["<C-p>"] = "actions.preview",
				["<C-c>"] = "actions.close",
				["<C-l>"] = "actions.refresh",
				["-"] = "actions.parent",
				["_"] = "actions.open_cwd",
				["`"] = "actions.cd",
				["~"] = "actions.tcd",
				["gs"] = "actions.change_sort",
				["gx"] = "actions.open_external",
				["g."] = "actions.toggle_hidden",
				["g\\"] = "actions.toggle_trash",
				-- Git operations
				["<leader>gs"] = {
					function()
						local oil = require("oil")
						local filename = oil.get_cursor_entry().name
						if filename then
							vim.cmd("!git add " .. vim.fn.shellescape(filename))
							oil.refresh()
						end
					end,
					desc = "Git stage file",
				},
				["<leader>gu"] = {
					function()
						local oil = require("oil")
						local filename = oil.get_cursor_entry().name
						if filename then
							vim.cmd("!git reset HEAD " .. vim.fn.shellescape(filename))
							oil.refresh()
						end
					end,
					desc = "Git unstage file",
				},
				["<leader>gd"] = {
					function()
						local oil = require("oil")
						local filename = oil.get_cursor_entry().name
						if filename then
							vim.cmd("vertical Git diff " .. vim.fn.shellescape(filename))
						end
					end,
					desc = "Git diff file",
				},
				["<leader>gc"] = {
					function()
						vim.cmd("Git commit")
					end,
					desc = "Git commit",
				},
				["<leader>gS"] = {
					function()
						vim.cmd("Git status")
					end,
					desc = "Git status",
				},
			},
		})
		vim.cmd([[colorscheme oil]]) -- set the theme
		vim.cmd([[set background=dark]])
		vim.cmd([[set termguicolors]])
	end,
	keys = {
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
	},
	opts = {},
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
