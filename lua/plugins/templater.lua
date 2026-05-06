-- Команды :TemplaterInsert / :TemplaterDaily / :TemplaterYesterday / :TemplaterTomorrow
-- Используют lua/util/templater.lua для рендера Obsidian-Templater (<% tp.* %>) синтаксиса.
return {
  {
    "obsidian-nvim/obsidian.nvim",
    optional = true,
    init = function()
      local function tp()
        return require("util.templater")
      end

      vim.api.nvim_create_user_command("TemplaterInsert", function()
        tp().pick_and_insert()
      end, { desc = "Templater: pick and insert" })

      vim.api.nvim_create_user_command("TemplaterDaily", function()
        tp().daily()
      end, { desc = "Templater: daily note" })

      vim.api.nvim_create_user_command("TemplaterYesterday", function()
        tp().daily({ offset = -1 })
      end, { desc = "Templater: yesterday daily" })

      vim.api.nvim_create_user_command("TemplaterTomorrow", function()
        tp().daily({ offset = 1 })
      end, { desc = "Templater: tomorrow daily" })

      vim.api.nvim_create_user_command("TemplaterFromName", function(o)
        tp().insert_at_cursor(o.args)
      end, { nargs = 1, desc = "Templater: insert by template filename (without path)" })
    end,
  },
}
