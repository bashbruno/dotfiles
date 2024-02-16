-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- allow to move selected lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle while doing half page scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- use ctrl+e to navigate up half page, while keeping curor in the middle
vim.keymap.set("n", "<C-e>", "<C-u>zz")
