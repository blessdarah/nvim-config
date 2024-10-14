return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- Use a sub-list to run only the first available formatter
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			php = { "pint", "php_cs_fixer", "blade-formatter" },
			blade = { "pint", "php_cs_fixer", "blade-formatter" },
			sql = { "sql_formatter" },
		},
	},
}
