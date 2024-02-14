return {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
        local nls = require("null-ls")
        nls.setup({
            border = "rounded",
        })
        opts.root_dir = opts.root_dir
            or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
        opts.sources = vim.list_extend(opts.sources or {}, {

            nls.builtins.diagnostics.stylelint,
            nls.builtins.formatting.stylelint,

            nls.builtins.diagnostics.markuplint,

            nls.builtins.code_actions.eslint_d,
            nls.builtins.diagnostics.eslint_d,
            nls.builtins.formatting.prettierd,

            nls.builtins.formatting.stylua,

            nls.builtins.diagnostics.ruff,
            nls.builtins.diagnostics.mypy,

            nls.builtins.formatting.isort,
            nls.builtins.formatting.black,

            nls.builtins.diagnostics.hadolint,
        })
    end,
}
