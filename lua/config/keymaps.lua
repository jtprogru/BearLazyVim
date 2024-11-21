-- This file is automatically loaded by lazyvim.config.init
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = vim.keymap.set

-- Remap for dealing with buffers
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Switch to next buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Switch to prev buffer" })
map("n", "<leader>x", LazyVim.ui.bufremove, { desc = "Delete current buffer" })

-- Work with GitSigns
-- map("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", { desc = "Next Hunk" })
