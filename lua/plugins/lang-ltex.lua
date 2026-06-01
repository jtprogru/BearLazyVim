-- ltex-ls-plus: LanguageTool как LSP — грамматика + орфография для en/ru
-- в markdown, gitcommit, tex и пр. Бинарь ставится через mason (`ltex-ls-plus`).
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ltex_plus = {
          filetypes = {
            "markdown",
            "markdown.mdx",
            "mdx",
            "gitcommit",
            "tex",
            "plaintex",
            "rst",
            "text",
          },
          settings = {
            ltex = {
              language = "ru-RU",
              additionalRules = {
                enablePickyRules = true,
                motherTongue = "ru-RU",
              },
              -- Доп. словари (имена/термины, на которые не должен ругаться).
              dictionary = {
                ["ru-RU"] = {},
                ["en-US"] = {},
              },
            },
          },
        },
      },
    },
  },
}
