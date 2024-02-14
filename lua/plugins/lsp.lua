return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {},
      intelephense = {},
      tsserver = {},
      cssls = {},
      dockerls = {},
      docker_compose_language_service = {},
    },
    setup = {},
  },
}
