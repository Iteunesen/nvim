local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python" },
    opts = function()
      return require("custom.configs.null-ls")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
        "tinymist",
        "haskell-language-server",
        "black",
        "pyright",
        "mypy",
        "ruff",
        "clang-format",
      },
    },
  },
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
    'mrcjkb/haskell-tools.nvim',
    version = "^3",
    lazy = false,
  },
}
return plugins
