return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.root_dir = opts.root_dir
      or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.diagnostics.stylelint,
      nls.builtins.formatting.stylelint,
      nls.builtins.diagnostics.eslint,
      nls.builtins.diagnostics.markuplint,
      nls.builtins.formatting.prettier,
      nls.builtins.formatting.stylua,
    })
  end,
}
