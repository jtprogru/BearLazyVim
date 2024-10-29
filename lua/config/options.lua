-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local HOME = os.getenv("HOME")

vim.g.python3_host_prog = HOME .. "/.config/nvim/venv/bin/python3"

opt.relativenumber = false -- Relative line numbers

vim.filetype.add {
  extension = {
    gotmpl = "gotmpl",
  },
  pattern = {
    [".*/templates/.*%.gotmpl"] = "helm",
    [".*/.*%.gotmpl"] = "helm",
    [".*/templates/.*%.ya?ml"] = "helm",
    ["helmfile.*%.ya?ml"] = "helm",
  },
}
