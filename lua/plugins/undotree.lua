return {
  "mbbill/undotree",
  config = function()
    local wk = require("which-key")

    wk.register({
      ["<leader>c"] = {
        name = "+code",
        u = { "<cmd>UndotreeToggle<cr>", "Undotree" },
      },
    })
  end,
}
