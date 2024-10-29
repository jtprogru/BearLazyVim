return {
  ensure_installed = {
    -- Ansible
    "ansible-language-server",
    "ansible-lint",
    "yamllint",
    -- Python
    "autopep8",
    "black",
    "flake8",
    "isort",
    "pylint",
    "pyright",
    "ruff",
    -- Lua
    "stylua",
    "luacheck",
    -- C/C++
    "clangd",
    "clang-format",
    -- Docker
    "docker-compose-language-service",
    "dockerfile-language-server",
    -- Go
    "delve",
    "goimports",
    "gomodifytags",
    "gopls",
    -- Terraform
    "tflint",
    "terraform-ls",
    "tfsec",
    -- Jsonnet
    "jsonnet-language-server",
    "jsonnetfmt",
    -- Rust
    -- "nil"
  },
}
