-- Buffer Manager
--
-- This plugin is a simple buffer manager for Neovim.
--
-- It allows you to switch between buffers, close buffers and
-- open files quickly.
--
-- You can also search for buffers by name, and you can use
-- the quick menu to open files.
-- testing something
return {

	"j-morano/buffer_manager.nvim",
	deps = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		-- make the width of the window longer
		width = 0.8,
	},
	keys = {
		{
			-- Trigger should be Ctrl + Space
			"<C-Space>",
			function()
				require("buffer_manager.ui").toggle_quick_menu()
			end,
			desc = "Buffer Manager",
		},
	},
}
