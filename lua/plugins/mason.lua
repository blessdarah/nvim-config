return {
	"williamboman/mason.nvim",
	cmd = "Mason",
	keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
	build = ":MasonUpdate",
	opts = {
		ensure_installed = {
			"ts_ls",
			"gopls",
			"html",
			"cssls",
			"tailwindcss",
			"lua_ls",
			"emmet_ls",
			"intelephense",
			"eslint",
			"svelte",
		},
		automatic_installation = true,
	},
}
