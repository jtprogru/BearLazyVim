return {
  "psliwka/vim-dirtytalk",
  build = ":DirtytalkUpdate",
  config = function()
    vim.opt.spelllang = { "en_us", "ru_ru", "programming" }
  end,
}
