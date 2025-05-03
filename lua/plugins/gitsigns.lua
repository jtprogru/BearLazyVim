-- Alternative plugins:
-- https://github.com/FabijanZulj/blame.nvim

return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  config = function()
    require("gitsigns").setup(require("config.gitsigns"))
  end,
}
