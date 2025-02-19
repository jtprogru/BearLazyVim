-- plugins for notetaking and knowledge management
local obsidian_config = require("config.obsidian")

return {
  "epwalsh/obsidian.nvim",
  verion = "*",
  lazy = false,
  ft = "markdown",
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre " .. vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents/SPACE/**/*.md"),
    "BufNewFile " .. vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents/SPACE/**/*.md"),
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = obsidian_config,
}
