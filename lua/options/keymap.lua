--[[
*****************************************************************
*                            NATIVE                             *
*****************************************************************
]]
-- "ß" -> to move to end of line
vim.keymap.set('n', 'ß', '$', {noremap = true})
-- "jj" -> to exit insert mode
vim.keymap.set('i', 'jj', '<Esc>', {noremap = true})

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
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
-- "K" -> Show documentation when hovering over method
vim.keymap.set("n", "K", vim.lsp.buf.hover)

