-- Поддержка MDX: подсветка через TS-парсер markdown + инъекции tsx/typescript
-- для JSX-вставок (import/export, <Component />, многострочные компоненты).
-- См. https://github.com/davidmh/mdx.nvim
return {
  {
    "davidmh/mdx.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    -- Плагин сам регистрирует filetype `mdx` через after/plugin/mdx.lua —
    -- его нужно загрузить ДО открытия .mdx-файла, иначе ft не выставится.
    lazy = false,
  },

  -- Парсеры, на которые ссылаются injection-запросы mdx.nvim.
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "tsx", "typescript" })
    end,
  },

  -- render-markdown.nvim по умолчанию работает только на ft=markdown.
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = function(_, opts)
      opts.file_types = opts.file_types or { "markdown" }
      if not vim.tbl_contains(opts.file_types, "mdx") then
        table.insert(opts.file_types, "mdx")
      end
    end,
  },

  -- marksman по умолчанию знает только markdown/markdown.mdx — добавим ft=mdx.
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          filetypes = { "markdown", "markdown.mdx", "mdx" },
        },
      },
    },
  },
}
