require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "html", "cssls", "emmet_ls", "volar", "gopls" },
})

