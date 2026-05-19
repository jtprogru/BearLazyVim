return {
  legacy_commands = false,
  workspaces = {
    {
      name = "SecondBrain",
      path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/SecondBrain",
      strict = true,
    },
  },

  -- notes_subdir = "/00. Входящие",

  daily_notes = {
    folder = "05. Дневник/",
    date_format = "%Y/%m/%Y-%m-%d",
    alias_format = "%B %-d, %Y",
    default_tags = { "journal/daily" },
    template = "Ежедневная заметка.md",
  },

  new_notes_location = "/00. Входящие",

  templates = {
    folder = "_Система/1. Шаблоны",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
  },

  picker = {
    name = "fzf-lua",
    note_mappings = {
      new = "<C-x>",
      insert_link = "<C-l>",
    },
    tag_mappings = {
      tag_note = "<C-x>",
      insert_tag = "<C-l>",
    },
  },

  ui = {
    enable = false, -- disabled to prevent character overlap in lists
  },

  attachments = {
    folder = "_Система/2. Статика",
    confirm_img_paste = true,
  },

  -- Подставлять wiki-ссылки автокомплитом по '['
  completion = {
    nvim_cmp = false,
    blink = true,
    min_chars = 2,
  },

  -- Не добавлять поле `id` во frontmatter (оставляем только aliases/tags
  -- и уже существующие метаданные заметки).
  frontmatter = {
    func = function(note)
      local out = { aliases = note.aliases, tags = note.tags }
      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          if k ~= "id" then
            out[k] = v
          end
        end
      end
      return out
    end,
  },
}
