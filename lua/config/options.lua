-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local HOME = os.getenv("HOME")
vim.g.python3_host_prog = HOME .. "/.config/nvim/venv/bin/python3"

vim.g.lazyvim_python_lsp = "ruff"

vim.opt.colorcolumn = "120"

opt.relativenumber = false -- Relative line numbers

vim.g.bigfile_size = 1024 * 1024 * 1024 * 1.5 -- 1.5 GB

vim.filetype.add({
  extension = {
    gotmpl = "gotmpl",
  },
  pattern = {
    [".*/templates/.*%.gotmpl"] = "helm",
    [".*/.*%.gotmpl"] = "helm",
    [".*/templates/.*%.ya?ml"] = "helm",
    ["helmfile.*%.ya?ml"] = "helm",
  },
})
