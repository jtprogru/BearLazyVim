-- Alternative plugins:
-- https://github.com/FabijanZulj/blame.nvim

return {
  "lewis6991/gitsigns.nvim",
  ft = { "gitcommit", "diff" },
  init = function()
    -- load gitsigns only when a git file is opened
    vim.api.nvim_create_autocmd({ "BufRead" }, {
      group = vim.api.nvim_create_augroup("GitSignsLazyLoad", { clear = true }),
      callback = function()
        vim.fn.jobstart({ "git", "-C", vim.loop.cwd(), "rev-parse" }, {
          on_exit = function(_, return_code)
            if return_code == 0 then
              vim.api.nvim_del_augroup_by_name("GitSignsLazyLoad")
              vim.schedule(function()
                require("lazy").load({ plugins = { "gitsigns.nvim" } })
              end)
            end
          end,
        })
      end,
    })
  end,
  opts = {
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    current_line_blame_formatter = "<author> (<author_time:%Y-%m-%d>) - <summary>",
    signs = {
      add = { text = "" },
      change = { text = "󰦓" },
      delete = { text = "󰍵" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "󰘓" },
    },
    numhl = true,
  },
  config = function(_, opts)
    require("gitsigns").setup(opts)
  end,
}
