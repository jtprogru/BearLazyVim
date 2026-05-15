-- Quarto: .qmd-файлы для работы над книгой slo-book (https://quarto.org/docs/books/).
-- Стек по официальной инструкции https://quarto.org/docs/tools/neovim.html:
--   * quarto-nvim — preview, LSP, навигация по чанкам
--   * otter.nvim  — встроенный LSP/комплит внутри кодовых чанков (python/lua/bash/...)
-- Сам Quarto CLI ставится отдельно (`brew install quarto`).
-- Настройки лежат в lua/config/quarto.lua.
local quarto = require("config.quarto")

return {
  {
    "quarto-dev/quarto-nvim",
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "quarto", "markdown" },
    opts = quarto.opts,
    keys = quarto.keys,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, quarto.treesitter_ensure_installed)
    end,
  },
}
