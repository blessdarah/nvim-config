return {
	"nvim-lspconfig",
	opts = {
		servers = {
			laravel_lsp = {
				cmd = { "laravel-lsp" },
				filetypes = { "php", "blade" },
				root_markers = { "artisan", "composer.json", ".git" },
			},
		},
	},
	config = function(_, opts)
		vim.lsp.config("laravel_lsp", opts.servers.laravel_lsp)
		vim.lsp.enable("laravel_lsp")
	end,
}