local null_ls = require("null-ls")

local sources = {
    -- Diagnostics
    null_ls.builtins.diagnostics.shellcheck.with({
        diagnostics_format = "[#{c}] #{m} (#{s})",
    }),
    -- null_ls.builtins.diagnostics.pylint.with({
    --     diagnostics_format = "[#{c}] #{m} (#{s})",
    -- }),

    -- Formatting
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.autopep8,
    null_ls.builtins.formatting.shfmt.with({
        extra_args = { "-i", "4", "-sr", "-ci" },
    }),
    null_ls.builtins.formatting.stylua.with({
        extra_args = { "--indent-type", "Spaces" },
    }),
    -- Haskell
    null_ls.builtins.formatting.brittany,

    -- Code actions
    null_ls.builtins.code_actions.shellcheck,
    null_ls.builtins.code_actions.eslint,
}

null_ls.setup({ sources = sources })
