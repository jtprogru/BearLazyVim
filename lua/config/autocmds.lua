-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Sync background with macOS system appearance.
-- `defaults read -g AppleInterfaceStyle` returns "Dark" in dark mode and errors in light mode.
local function sync_macos_background()
  local out = vim.fn.system({ "defaults", "read", "-g", "AppleInterfaceStyle" })
  local is_dark = vim.v.shell_error == 0 and out:match("Dark") ~= nil
  local target = is_dark and "dark" or "light"
  if vim.o.background ~= target then
    vim.o.background = target
  end
end

vim.api.nvim_create_autocmd({ "VimEnter", "FocusGained" }, {
  group = vim.api.nvim_create_augroup("macos_background_sync", { clear = true }),
  callback = sync_macos_background,
})
