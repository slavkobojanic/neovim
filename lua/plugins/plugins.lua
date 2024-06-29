return {
    -- lsp
    "neovim/nvim-lspconfig",
    "nvim-lua/lsp-status.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    -- file search 
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-tree.lua",

    -- git
    "rhysd/conflict-marker.vim",
    "lewis6991/gitsigns.nvim",

    -- editing
    {
        "ray-x/lsp_signature.nvim", -- inline function signatures
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require"lsp_signature".setup(opts) end
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        "numToStr/Comment.nvim",
    },
    "jose-elias-alvarez/null-ls.nvim",
    -- "MunifTanjim/eslint.nvim",
    -- "MunifTanjim/prettier.nvim",
    "gpanders/editorconfig.nvim",
    "neoclide/coc.nvim",

    -- experience
    "navarasu/onedark.nvim",
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    { "echasnovski/mini.nvim", version = false },
    {
        'dense-analysis/ale',
        config = function()
            -- Configuration goes here.
            local g = vim.g
    
            g.ale_ruby_rubocop_auto_correct_all = 1
            g.ale_fix_on_save = 1
    
            g.ale_linters = {
                ruby = {'rubocop', 'ruby'},
                lua = {'lua_language_server'},
                javascript = {'prettier', 'eslint'},
                typescript = {'prettier', 'eslint'},
                typescriptreact = {'prettier', 'eslint'}
            }
            g.ale_fixers = {'prettier', 'eslint'}
        end
    }
}