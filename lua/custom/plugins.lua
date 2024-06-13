local plugins = {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
        "typst-lsp",
        "ruff-lsp",
        "haskell-language-server",
        "clang",
        "clang-format",
      },
    },
  },
  {
    'mrcjkb/haskell-tools.nvim',
    version = "^3",
    lazy = false,
  },
}
return plugins
