local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.typst_lsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typst" },
  settings = {
    experimentalFormatterMode = "on",
  }
})

lspconfig.hls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "haskell", "lhaskell", "cabal" }
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
})
