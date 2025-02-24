-- This file is automatically loaded by lazyvim.config.init
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = vim.keymap.set

-- Remap for dealing with buffers
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Switch to next buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Switch to prev buffer" })

-- Work with GitSigns
map("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", { desc = "Next Hunk" })

-- -- VIM hard mode (disable backspace and arrows)
-- -- Source: https://www.mailslurp.com/blog/vim-hard-mode/
-- local hardmode = true
-- if hardmode then
--   -- Show an error message if a disabled key is pressed
--   local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]
--
--   -- Disable arrow keys in insert mode with a styled message
--   -- map("i", "<Up>", "<C-o>" .. msg, { noremap = true, silent = false })
--   -- map("i", "<Down>", "<C-o>" .. msg, { noremap = true, silent = false })
--   -- map("i", "<Left>", "<C-o>" .. msg, { noremap = true, silent = false })
--   -- map("i", "<Right>", "<C-o>" .. msg, { noremap = true, silent = false })
--   -- map("i", "<Del>", "<C-o>" .. msg, { noremap = true, silent = false })
--   -- map("i", "<BS>", "<C-o>" .. msg, { noremap = true, silent = false })
--
--   -- Disable arrow keys in normal mode with a styled message
--   map("n", "<Up>", msg, { noremap = true, silent = false })
--   map("n", "<Down>", msg, { noremap = true, silent = false })
--   map("n", "<Left>", msg, { noremap = true, silent = false })
--   map("n", "<Right>", msg, { noremap = true, silent = false })
--   -- map("n", "<BS>", msg, { noremap = true, silent = false })
-- end
