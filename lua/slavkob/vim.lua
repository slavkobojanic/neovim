-- Show line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Break lines at word (requires Wrap lines)
vim.o.linebreak = true

-- Wrap-broken line prefix
vim.o.showbreak = '+++'

-- Line wrap (number of cols)
vim.o.textwidth = 100

-- Highlight matching brace
vim.o.showmatch = true

-- Use visual bell (no beeping)
vim.o.visualbell = true

-- Highlight all search results
vim.o.hlsearch = true

-- Enable smart-case search
vim.o.smartcase = true

-- Always case-insensitive
vim.o.ignorecase = true

-- Searches for strings incrementally
vim.o.incsearch = true

-- Auto-indent new lines
vim.o.autoindent = true

-- Show row and column ruler information
vim.o.ruler = true

-- Number of undo levels
vim.o.undolevels = 1000

-- Backspace behaviour
vim.o.backspace = 'indent,eol,start'

-- Use spaces instead of tabs
vim.o.expandtab = true

-- Number of spaces per Tab
vim.o.tabstop = 2

-- Number of spaces to use for auto-indent
vim.o.shiftwidth = 2

-- Number of spaces to use for each step of (auto)indent
vim.o.softtabstop = 2

-- Disable swap filetypes
vim.opt.swapfile = false