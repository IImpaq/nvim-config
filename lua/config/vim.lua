-- VIM SETTINGS
local o = vim.o
local wo = vim.wo

-- Set highlight on search
o.hlsearch = false

-- Make line numbers default
wo.number = true

-- Enable relative line numbers
wo.relativenumber = true

-- Enable mouse mode
o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
o.clipboard = "unnamedplus"

-- Enable break indent
o.breakindent = true

-- Save undo history
o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
o.ignorecase = true
o.smartcase = true

-- Tab configuration
--  Expand tab input with space characters
o.expandtab = true
--  syntax aware indentations for newline inserts
o.smartindent = true
--  Number of space characters per tab
o.tabstop = 2
--  Spaces per indentation level
o.shiftwidth = 2

-- Keep signcolumn on by default
wo.signcolumn = "yes"

-- Decrease update time
o.updatetime = 250
o.timeout = true
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
o.termguicolors = true
