-- keymaps.lua
--
-- ======================================================================
-- keymap
-- ======================================================================

vim.g.mapleader = ' '           -- space key is <leader>

-- ======================================================================
-- Normal Mode --
vim.api.nvim_set_keymap('n', '<leader>w', ':<C-u>w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':<C-u>q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':<C-u>noh<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>s', ':<C-u>sp<CR>', { noremap = true })   -- split window
vim.api.nvim_set_keymap('n', '<Leader>v', ':<C-u>vs<CR>', { noremap = true })   -- split vertically window
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', { noremap = true, silent = true })         -- move left window
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', { noremap = true, silent = true })         -- move lower window
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', { noremap = true, silent = true })         -- move upper window
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', { noremap = true, silent = true })         -- move right window

-- Insert Mode --
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { silent = true })



