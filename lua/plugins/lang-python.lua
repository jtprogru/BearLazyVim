-- Python: ruff (lint/format) + basedpyright (types). Ruff отдаёт hover/completion pyright'у.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly",
                inlayHints = {
                  variableTypes = true,
                  callArgumentNames = true,
                  functionReturnTypes = true,
                  genericTypes = false,
                },
              },
            },
          },
        },
        ruff = {
          init_options = {
            settings = {
              logLevel = "error",
            },
          },
        },
      },
      setup = {
        ruff = function()
          vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
              local client = vim.lsp.get_client_by_id(args.data.client_id)
              if client and client.name == "ruff" then
                client.server_capabilities.hoverProvider = false
              end
            end,
          })
        end,
      },
    },
  },
}
