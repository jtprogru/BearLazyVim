-- blink.cmp tweaks: docs auto-show, signature help, min keyword length.
-- Codeium здесь не подключаем — оно работает через virtual-text (см. codeium.lua),
-- чтобы AI-suggestions не смешивались с LSP-комплитом и были видны inline.
return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
        ghost_text = {
          enabled = false, -- ghost-text занят codeium virtual_text
        },
        list = {
          selection = { preselect = false, auto_insert = true },
        },
      },
      signature = { enabled = true },
      keymap = {
        preset = "default",
        ["<C-y>"] = { "select_and_accept" },
      },
    },
  },
}
