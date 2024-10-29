-- This file is automatically loaded by lazyvim.config.init
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = vim.keymap.set

-- Remap for dealing with buffers
map("n", "<tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- commenting
map("n", "<leader>/", "<cmd>normal gcc<cr>", { desc = "Comment current line" })
