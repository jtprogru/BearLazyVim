-- Codeium (Windsurf) AI completion
-- Login: :Codeium Auth   |   Disable per-buffer: :CodeiumDisable
return {
  {
    "Exafunction/codeium.nvim",
    cmd = "Codeium",
    event = "InsertEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      enable_chat = true,
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        manual = false,
        filetypes = {
          TelescopePrompt = false,
          ["neo-tree"] = false,
          ["neo-tree-popup"] = false,
          ["dap-repl"] = false,
          gitcommit = true,
          markdown = true,
        },
        default_filetype_enabled = true,
        idle_delay = 75,
        key_bindings = {
          accept = "<C-g>",
          accept_word = "<C-w>",
          accept_line = "<C-l>",
          next = "<M-]>",
          prev = "<M-[>",
          clear = "<C-x>",
        },
      },
    },
  },
}
