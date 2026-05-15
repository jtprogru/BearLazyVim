-- Настройки quarto-nvim для работы над книгой slo-book.
-- Подключается из lua/plugins/quarto.lua.
local M = {}

M.opts = {
  lspFeatures = {
    enabled = true,
    chunks = "all",
    languages = { "python", "bash", "lua", "html", "yaml", "json" },
    diagnostics = {
      enabled = true,
      triggers = { "BufWritePost" },
    },
    completion = { enabled = true },
  },
  codeRunner = {
    -- Книга компилируется через `quarto render`/`quarto preview`,
    -- интерактивный запуск чанков (slime/molten) не нужен.
    enabled = false,
  },
  keymap = {
    -- Отключаем дефолтные биндинги — задаём через keys в plugin spec.
    hover = false,
    definition = false,
    rename = false,
    references = false,
    format = false,
  },
}

M.keys = {
  {
    "<leader>qp",
    function()
      require("quarto").quartoPreview()
    end,
    desc = "Quarto Preview",
    ft = { "quarto", "markdown" },
  },
  {
    "<leader>qc",
    function()
      require("quarto").quartoClosePreview()
    end,
    desc = "Quarto Close Preview",
    ft = { "quarto", "markdown" },
  },
  {
    "<leader>qa",
    function()
      require("quarto").activate()
    end,
    desc = "Quarto Activate (otter LSP)",
    ft = { "quarto", "markdown" },
  },
}

-- Treesitter-парсеры, нужные Quarto. LazyVim уже ставит часть через markdown-extra,
-- но добавим явные на случай чистой установки.
M.treesitter_ensure_installed = {
  "markdown",
  "markdown_inline",
  "yaml",
  "bash",
  "python",
}

return M
