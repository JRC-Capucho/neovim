return {
  -- Configure LazyVim to load oxocarbon
  {
    "LazyVim/LazyVim",
    dependencies = {
      "marko-cerovac/material.nvim",
      name = "material",
    },
    opts = {
      colorscheme = "material-deep-ocean",
    },
  },
}

-- return {
--   -- Configure LazyVim to load oxocarbon
--   {
--     "LazyVim/LazyVim",
--     dependencies = { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
--     opts = {
--       colorscheme = "oxocarbon",
--     },
--   },
-- }

-- return {
--   "LazyVim/LazyVim",
--   priority = 1000,
--   dependencies = {
--     "ellisonleao/gruvbox.nvim",
--   },
--   opts = {
--     colorscheme = "gruvbox",
--   },
-- }

-- ROSE PINE
-- return {
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     dependencies = { "rose-pine/neovim", name = "rose-pine" },
--     opts = {
--       colorscheme = "rose-pine",
--     },
--   },
-- }

-- CATPPUCCIN
-- return {
--   "LazyVim/LazyVim",
--   opts = {
--     colorscheme = "catppuccin",
--     integrations = {
--       aerial = true,
--       alpha = true,
--       cmp = true,
--       dashboard = true,
--       flash = true,
--       gitsigns = true,
--       headlines = true,
--       illuminate = true,
--       indent_blankline = { enabled = true },
--       leap = true,
--       lsp_trouble = true,
--       mason = true,
--       markdown = true,
--       mini = true,
--       native_lsp = {
--         enabled = true,
--         underlines = {
--           errors = { "undercurl" },
--           hints = { "undercurl" },
--           warnings = { "undercurl" },
--           information = { "undercurl" },
--         },
--       },
--       navic = { enabled = true, custom_bg = "lualine" },
--       neotest = true,
--       neotree = true,
--       noice = true,
--       notify = true,
--       semantic_tokens = true,
--       telescope = true,
--       treesitter = true,
--       treesitter_context = true,
--       which_key = true,
--     },
--   },
-- }
