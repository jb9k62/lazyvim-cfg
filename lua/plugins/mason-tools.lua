-- Mason-managed LSP servers and tools
-- This ensures all tools are installed automatically on any machine
return {
  -- LSP servers (auto-installed via mason-lspconfig)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {},
        marksman = {},
        postgres_lsp = {},
        prismals = {},
        pug = {},
        pyright = {},
        vtsls = {},
      },
    },
  },

  -- Non-LSP tools (formatters, linters, etc.)
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "markdown-toc",
        "markdownlint-cli2",
        "pgformatter",
        "ruff",
        "shfmt",
        "stylua",
        "tree-sitter-cli",
      },
    },
  },
}
