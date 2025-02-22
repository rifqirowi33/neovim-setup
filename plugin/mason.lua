require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "html", "ts_ls", "cssls" }, -- LSP untuk web
})

local lspconfig = require("lspconfig")

lspconfig.html.setup({})
lspconfig.ts_ls.setup({})
lspconfig.cssls.setup({})

