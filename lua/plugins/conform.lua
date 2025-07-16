return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 3000,
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
			php = { "pint", "blade-formatter" },
			blade = { "pint", "blade-formatter" },
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
