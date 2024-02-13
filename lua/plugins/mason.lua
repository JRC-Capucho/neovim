return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
      icons = {
        package_pending = " ",
        package_installed = "󰄳 ",
        package_uninstalled = " 󰚌",
      },

      keymaps = {
        toggle_server_expand = "<CR>",
        install_server = "i",
        update_server = "u",
        check_server_version = "c",
        update_all_servers = "U",
        check_outdated_servers = "C",
        uninstall_server = "X",
        cancel_installation = "<C-c>",
      },
    },

    max_concurrent_installers = 10,

    ensure_installed = {
      "stylua",
      -- "shellcheck",
      -- "shfmt",
      -- "flake8",
      -- "intelephense",
      "isort",
      "mypy",
      "black",
      "ruff",
      "pyright",
      "typescript-language-server",
      "prettierd",
      "eslint_d",
      -- "gopls",
      "lua-language-server",
      "css-lsp",
      "markuplint",
    },
  },
}
