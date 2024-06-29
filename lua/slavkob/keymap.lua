vim.g.mapleader = ' '

-- general
vim.keymap.set("v", "<leader><C-f>", vim.lsp.buf.format, {})
vim.keymap.set("n", "<leader>.", vim.lsp.buf.code_action, {})

-- telescope
local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', telescope.find_files, {})
vim.keymap.set('n', '<leader><S-f>', telescope.live_grep, {})

-- nvim-tree
vim.keymap.set('n', '<leader><S-e>', ':NvimTreeToggle<CR>', {})