return {
  max_concurrent_installers = 4,
  pip = {
    upgrade_pip = true,
  },
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
  ensure_installed = {
    -- "gh",
    "gitleaks",
    -- Ansible
    -- "ansible-language-server",
    -- "ansible-lint",
    -- "yamllint",
    -- "yamlfmt",
    -- Python
    -- "autopep8",
    -- "black",
    -- "flake8",
    -- "isort",
    -- "pylint",
    -- "pyright",
    -- "ruff",
    -- Lua
    -- "stylua",
    -- "luacheck",
    -- C/C++
    -- "clangd",
    -- "clang-format",
    -- Elixir
    -- "elixir-ls",
    -- Docker
    -- "docker-compose-language-service",
    -- "dockerfile-language-server",
    -- Go
    -- "delve",
    -- "goimports",
    -- "gomodifytags",
    -- "golangci-lint",
    -- "golangci-lint-langserver",
    -- "gopls",
    -- "gotests",
    -- Terraform
    -- "tflint",
    -- "terraform-ls",
    -- "tfsec",
    -- "hclfmt",
    -- Jsonnet
    -- "jsonnet-language-server",
    -- "jsonnetfmt",
    -- Markdown
    -- "markdownlint-cli2",
    -- "markdown-toc",
    -- "marksman",
    -- "ltex-ls",
    -- Rust
    -- "rust-analyzer",
    -- Nix
    -- "nil",
  },
}
