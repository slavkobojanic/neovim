-- Set up null-ls.nvim
local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.eslint_d.with({
            command = "eslint_d",
            args = { "--stdin", "--stdin-filename", "$FILENAME", "--fix-to-stdout" },
        }),
    },
})

-- Create an autocmd to format on save
vim.cmd([[
    augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx EslintFixAll
    augroup END
]])

-- Define the EslintFixAll command
vim.api.nvim_create_user_command(
    'EslintFixAll',
    function()
        vim.lsp.buf.format({ async = true })
    end,
    {}
)