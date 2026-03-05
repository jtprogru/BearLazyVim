# BearLazyVim - Neovim Configuration

## Project Overview

This is a **LazyVim-based Neovim configuration** (BearLazyVim) - a modern, plugin-managed Neovim setup built on top of the [LazyVim](https://github.com/LazyVim/LazyVim) distribution. It uses `lazy.nvim` as the plugin manager and provides a pre-configured development environment with extensive language support.

## Key Features

### Language Support
- **Python** - Ruff LSP, venv-selector integration
- **Go** - gopls, goimports, debugging support
- **Rust** - rust-analyzer
- **JavaScript/TypeScript** - full LSP support
- **Lua** - lua-language-server
- **Terraform/Helm** - HCL, Helm templates
- **Docker** - Dockerfile and docker-compose LSP
- **Ansible** - YAML, Ansible linting
- **Markdown** - Obsidian integration

### Core Plugins
- **lazy.nvim** - Plugin manager with lazy-loading
- **nvim-treesitter** - Syntax highlighting and code navigation
- **telescope.nvim** / **fzf** - Fuzzy finding
- **gitsigns.nvim** - Git integration with inline blame
- **obsidian.nvim** - Obsidian vault integration
- **catppuccin** - Color scheme (macchiato variant)
- **venv-selector.nvim** - Python virtual environment switching

## Directory Structure

```
~/.config/nvim/
├── init.lua              # Entry point - bootstraps lazy.nvim
├── lua/
│   ├── config/           # Core configuration files
│   │   ├── lazy.lua      # Plugin manager setup
│   │   ├── options.lua   # Neovim options
│   │   ├── keymaps.lua   # Key bindings
│   │   ├── mason.lua     # LSP/tools installer config
│   │   ├── obsidian.lua  # Obsidian workspace config
│   │   ├── autocmds.lua  # Auto commands
│   │   └── gitsigns.lua  # Git signs configuration
│   └── plugins/          # Custom plugin configurations
│       ├── colorscheme.lua
│       ├── treesitter.lua
│       ├── venv-selector.lua
│       ├── mason.lua
│       └── ...
├── spell/                # Spell check dictionaries (EN/RU)
└── venv/                 # Python virtual environment
```

## Building and Running

### Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim_bkp

# Clone repository
git clone git@github.com:jtprogru/BearLazyVim.git ~/.config/nvim

# Start Neovim (plugins install automatically)
nvim
```

### Key Commands

| Command | Description |
|---------|-------------|
| `:Lazy` | Open lazy.nvim plugin manager |
| `:Lazy sync` | Update all plugins |
| `:Mason` | Open LSP/tools installer UI |
| `:VenvSelect` | Select Python virtual environment |
| `:ObsidianOpen` | Open current note in Obsidian |
| `:TSUpdate` | Update treesitter parsers |

### Keyboard Shortcuts

- `<leader>` = Space (default LazyVim leader)
- `<tab>` / `<S-tab>` - Switch buffers
- `<leader>gj` - Next Git hunk
- `<leader>cv` - Select Python venv (Python files)

## Configuration Highlights

### Python Setup
- Uses embedded venv at `~/.config/nvim/venv/`
- LSP: Ruff (`vim.g.lazyvim_python_lsp = "ruff"`)
- Virtualenv selection via `venv-selector.nvim`

### Obsidian Integration
- Vault path: `~/Library/Mobile Documents/iCloud~md~obsidian/Documents/SecondBrain`
- Notes directory: `0. Файлы/0. Входящие`
- Templates: `0. Файлы/1. Шаблоны`
- Daily notes in: `2. Сферы жизни/0. Дневник`
- Wiki links use alias-only format

### Git Integration
- gitsigns with inline blame
- Custom signs for add/change/delete
- Line blame format: `<author> (<author_time:%Y-%m-%d %H:%M>) - <summary>`

### Code Style
- Indentation: 2 spaces (stylua.toml)
- Column width: 120
- Color column at 120

## Development Conventions

### Lua Style
- Formatted with **StyLua**
- Configuration in `stylua.toml`:
  - Indent type: Spaces
  - Indent width: 2
  - Column width: 120

### Plugin Configuration Pattern
Plugins are configured using LazyVim's spec pattern:

```lua
return {
  "plugin/author",
  opts = { ... },  -- LazyVim automatically calls setup()
  keys = { ... },  -- Key bindings
  ft = "...",      -- Filetype triggers
  cmd = "...",     -- Commands
}
```

### LazyVim Extras
Enabled extras (in `lua/config/lazy.lua`):
- `lazyvim.plugins.extras.dap.core` - Debug adapter protocol
- `lazyvim.plugins.extras.editor.fzf` - fzf integration
- `lazyvim.plugins.extras.editor.outline` - Code outline
- `lazyvim.plugins.extras.lang.*` - Language packs (python, go, rust, terraform, etc.)
- `lazyvim.plugins.extras.lsp.none-ls` - Null-ls for formatters/linters
- `lazyvim.plugins.extras.test.core` - Test runner

## Maintenance

### Update Plugins
```bash
nvim --headless "+Lazy! sync" +qa
```

### Update Treesitter Parsers
```bash
nvim -c "TSUpdateSync" -c "qa"
```

### Check Plugin Status
```bash
nvim -c ":Lazy" -c "qa"
```

## License

See [LICENSE](LICENSE) file.
