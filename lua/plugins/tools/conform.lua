return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 3000,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			http = { "kulala" },
			rest = {},
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- Use a sub-list to run only the first available formatter
			javascript = { "biome" },
			javascriptreact = { "biome" },
			typescript = { "biome" },
			typescriptreact = { "biome" },
			php = { "php-cs-fixer" },
			blade = { "tlint", "php-cs-fixer", "blade-formatter", stop_after_first = true },
			sql = { "sql_formatter" },
		},
		formatters = {
			pint = {
				timeout_ms = 10000,
				stdin = false,
			},
		},
	},
}
