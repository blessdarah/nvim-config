return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
        { "<leader>f", "<cmd>FzfLua files<cr>", desc = "Find Files" },
        { "<leader>r", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
        { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
        { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags" },
        { "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Keymaps" },
        { "<leader>fC", "<cmd>FzfLua commands<cr>", desc = "Commands" },
        -- go to definition
        { "gd", "<cmd>FzfLua lsp_definitions<cr>", desc = "Go to Definition" },
        { "gD", "<cmd>FzfLua lsp_declarations<cr>", desc = "Go to Declaration" },
        { "gi", "<cmd>FzfLua lsp_implementations<cr>", desc = "Go to Implementation" },
        { "gr", "<cmd>FzfLua lsp_references<cr>", desc = "Go to References" },
        { "<leader>gs", "<cmd>FzfLua git_status<cr>", desc = "Git Status" },
        { "<leader>gc", "<cmd>FzfLua git_commits<cr>", desc = "Git Commits" },
        { "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "Git Branches" },
        { "<leader>ca", "<cmd>FzfLua quickfix<cr>", desc = "Quick Fix" },

        -- diagnostics
        { "<leader>bd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Diagnostics" },
        -- buffer diagnostics
        { "[e", "<cmd>FzfLua diagnostics_document<cr>", desc = "Next Diagnostic" },
        { "]e", "<cmd>FzfLua diagnostics_document<cr>", desc = "Previous Diagnostic" },
    },
}
