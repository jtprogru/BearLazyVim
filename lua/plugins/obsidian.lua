-- plugins for notetaking and knowledge management
local obsidian_config = require("config.obsidian")

return {
  -- "epwalsh/obsidian.nvim",
  "obsidian-nvim/obsidian.nvim",
  verion = "*",
  lazy = false,
  ft = { "markdown", "mdx" },
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre " .. vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents/SecondBrain/**/*.md"),
    "BufNewFile " .. vim.fn.expand("~/Library/Mobile Documents/iCloud~md~obsidian/Documents/SecondBrain/**/*.md"),
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "HakonHarnes/img-clip.nvim",
  },
  keys = {
    { "<leader>oo", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian: quick switch" },
    -- Daily через Templater (рендерит <% tp.* %>)
    { "<leader>od", "<cmd>TemplaterDaily<cr>", desc = "Templater: today" },
    { "<leader>oy", "<cmd>TemplaterYesterday<cr>", desc = "Templater: yesterday" },
    { "<leader>oT", "<cmd>TemplaterTomorrow<cr>", desc = "Templater: tomorrow" },
    -- Native obsidian.nvim как запасной вариант
    { "<leader>oD", "<cmd>Obsidian today<cr>", desc = "Obsidian (native): today" },
    { "<leader>on", "<cmd>Obsidian new<cr>", desc = "Obsidian: new note" },
    { "<leader>os", "<cmd>Obsidian search<cr>", desc = "Obsidian: search (grep)" },
    { "<leader>oq", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian: switch note" },
    { "<leader>ot", "<cmd>Obsidian tags<cr>", desc = "Obsidian: tags" },
    { "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian: backlinks" },
    { "<leader>ol", "<cmd>Obsidian links<cr>", desc = "Obsidian: links" },
    { "<leader>oL", "<cmd>Obsidian follow_link<cr>", desc = "Obsidian: follow link" },
    -- Templater-вставка любого шаблона в текущий буфер с рендером
    { "<leader>oi", "<cmd>TemplaterInsert<cr>", desc = "Templater: insert" },
    { "<leader>oI", "<cmd>Obsidian template<cr>", desc = "Obsidian (native): insert template" },
    { "<leader>op", "<cmd>Obsidian paste_img<cr>", desc = "Obsidian: paste image" },
    { "<leader>or", "<cmd>Obsidian rename<cr>", desc = "Obsidian: rename note" },
    { "<leader>ow", "<cmd>Obsidian workspace<cr>", desc = "Obsidian: switch workspace" },
    { "<leader>oc", "<cmd>Obsidian toggle_checkbox<cr>", desc = "Obsidian: toggle checkbox" },
  },
  opts = obsidian_config,
}
