return {
  "oflisback/obsidian-bridge.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("obsidian-bridge").setup({
      obsidian_server_address = "http://localhost:27123",
      scroll_sync = true,
    })
  end,
  event = {
    "BufReadPre *.md",
    "BufNewFile *.md",
  },
  lazy = false,
}

-- return {
--   "epwalsh/obsidian.nvim",
--   version = "*", -- recommended, use latest release instead of latest commit
--   lazy = true,
--   ft = "markdown",
--   -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
--   event = {
--     -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
--     -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
--     -- refer to `:h file-pattern` for more examples
--     "BufReadPre "
--       .. vim.fn.expand("~")
--       .. "Library/Mobile Documents/iCloud~md~obsidian/Documents/SPACE/*.md",
--     "BufNewFile " .. vim.fn.expand("~") .. "Library/Mobile Documents/iCloud~md~obsidian/Documents/SPACE/*.md",
--   },
--   dependencies = {
--     -- Required.
--     "nvim-lua/plenary.nvim",
--
--     -- see below for full list of optional dependencies 👇
--   },
--   opts = {
--     workspaces = {
--       {
--         name = "personal",
--         path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/SPACE",
--       },
--       {
--         name = "test",
--         path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/ZTK",
--       },
--     },
--
--     -- see below for full list of options 👇
--   },
-- }
