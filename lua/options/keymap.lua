--[[
*****************************************************************
*                            NATIVE                             *
*****************************************************************
]]
-- "ß" -> to move to end of line
vim.keymap.set('n', 'ß', '$', {noremap = true})
-- "jj" -> to exit insert mode
vim.keymap.set('i', 'jj', '<Esc>', {noremap = true})

vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true})

--[[
*****************************************************************
*                          TELESCOPE                            *
*****************************************************************
]]
local telescope = require('telescope.builtin')
-- "leader" + "ff" -> find in files
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
-- "leader" + "fg" -> find using live grep
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
-- "leader" + "fb" -> find in open buffers 
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
-- "leader" + "ff" -> find help tags 
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})

--[[
*****************************************************************
*                          LSPCONFIG                            *
*****************************************************************
]]
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
-- "K" -> Show documentation when hovering over method
vim.keymap.set("n", "K", vim.lsp.buf.hover)

--[[
*****************************************************************
*                              HOP                              *
*****************************************************************
]]
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set("", 'f', function()
  hop.hint_patterns({ direction = directions.AFTER_CURSOR })
end, {remap=true})
vim.keymap.set("", 'F', function()
  hop.hint_patterns({ direction = directions.BEFORE_CURSOR })
end, {remap=true})
vim.keymap.set("", "t", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR })
end, {remap=true})
vim.keymap.set("", "T", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR })
end, {remap=true})


--[[
*****************************************************************
*                            BARBAR                             *
*****************************************************************
]]
local opts = { noremap = true, silent = true }

-- Move to previous/next
vim.api.nvim_set_keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
vim.api.nvim_set_keymap('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
vim.api.nvim_set_keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
vim.api.nvim_set_keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
vim.api.nvim_set_keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.api.nvim_set_keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
vim.api.nvim_set_keymap('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
vim.api.nvim_set_keymap('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
vim.api.nvim_set_keymap('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
vim.api.nvim_set_keymap('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
