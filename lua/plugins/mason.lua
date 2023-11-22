return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "intelephense",
      "mypy",
      "black",
      "ruff",
      "pyright",
      "typescript-language-server",
      "prettier",
      "eslint-lsp",
      "gopls",
      "lua-language-server",
    },
  },
}
