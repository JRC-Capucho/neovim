return {
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup({
        -- Configuration here, or leave empty to use defaults
        font = "Liga SFMono Nerd Font=34",
        theme = "DarkNeon",
        language = "javascript",
      })
    end,
  },
}
