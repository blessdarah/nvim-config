require("lsp-format").setup {
    html = {{ cmd = {"prettier -w"}}},
    css = {{ cmd = {"prettier -w"}}},
    json = {{ cmd = {"prettier -w"}}},
    yaml = {{ cmd = {"prettier -w"}}},
    javascript = {{ cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
    javascriptreact = {{ cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
    typescript = {{ cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
    typescriptreact = {{ cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}},
}

local on_attach = function(client)
    require "lsp-format".on_attach(client)

   vim.cmd('autocmd BufWritePost * FormatWrite') 
    -- ... custom code ...
end
require "lspconfig".gopls.setup { on_attach = on_attach }

