return {
	"jwalton512/vim-blade",
	ft = { "blade" },
	config = function()
		-- Configure blade file detection
		vim.filetype.add({
			pattern = {
				[".*%.blade%.php"] = "blade",
			},
		})
		
		-- Set up blade-specific settings
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "blade",
			callback = function()
				-- Enable HTML-like folding for blade files
				vim.opt_local.foldmethod = "indent"
				vim.opt_local.foldlevel = 2
				
				-- Set up proper indentation
				vim.opt_local.tabstop = 4
				vim.opt_local.shiftwidth = 4
				vim.opt_local.expandtab = true
				
				-- Enable HTML-like tag matching
				vim.opt_local.matchpairs = vim.opt_local.matchpairs + "<:>"
				
				-- Set comment string for blade files
				vim.opt_local.commentstring = "{{-- %s --}}"
			end,
		})
	end,
}
