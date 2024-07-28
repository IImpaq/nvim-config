--[[
*****************************************************************
*                            NATIVE                             *
*****************************************************************
]]
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- "ß" -> to move to end of line
vim.keymap.set("n", "ß", "$", { noremap = true })
-- "jj" -> to exit insert mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })
-- "ESC" -> remove search highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- "<leader>q" -> open quickfix list
vim.keymap.set("n", "<leader>ql", vim.diagnostic.setloclist, { desc = "Open diagnostic [q]uickfix [l]ist" })
-- "<ESC><ESC>" -> exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
-- "<leader>qq quickly close buffer"
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true, noremap = true, desc = "[q]uit buffer" })

--[[
*****************************************************************
*                           BUFFERS                             *
*****************************************************************
]]
vim.api.nvim_set_keymap("n", "tk", ":blast<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tj", ":bfirst<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "th", ":bprev<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tl", ":bnext<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "td", ":bdelete<enter>", { noremap = false })
