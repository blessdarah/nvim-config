# My Neovim Configuration

A modern Neovim setup optimized for JavaScript/TypeScript, React, Node.js, PHP/Laravel development.

## Prerequisites

- **Neovim** >= 0.9.0
- **Git**
- **ripgrep** (for telescope live grep)
- **fd** (for file finding)
- **Node.js** >= 18 (for LSP servers)
- **PHP** >= 8.1 (for Laravel/PHP development)
- **Composer** (for PHP dependencies)
- **Nerd Font** (recommended: FiraCode Nerd Font)

### macOS Installation
```bash
brew install neovim ripgrep fd node php composer
# Install FiraCode Nerd Font
brew install --cask font-fira-code-nerd-font
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update && sudo apt install neovim ripgrep fd-find nodejs npm php composer
# Install Nerd Font manually or via package manager
```

## Quick Setup

### 1. Backup existing config (if any)
```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### 2. Clone this configuration
```bash
git clone https://github.com/blessdarah/nvim-config.git ~/.config/nvim
```

### 3. Install plugins
Open Neovim - plugins will install automatically via lazy.nvim:
```bash
nvim
```
Or run headless:
```bash
nvim --headless "+Lazy! sync" +qa
```

### 4. Install LSP servers
```bash
# JavaScript/TypeScript
npm install -g typescript typescript-language-server @tailwindcss/language-server

# PHP/Laravel
composer global require phpactor/phpactor
# or use intelephense
npm install -g intelephense

# Other useful servers
npm install -g vscode-langservers-extracted bash-language-server dockerfile-language-server-nodejs
```

### 5. Install formatters/linters
```bash
# JS/TS
npm install -g prettier eslint_d @biomejs/biome

# PHP
composer global require friendsofphp/php-cs-fixer

# Lua
npm install -g @lua-language-server/lua-language-server stylua
```

### 6. Verify installation
```bash
nvim --headless -c 'checkhealth' -c 'qa'
```

## Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── config/
│   │   ├── options.lua      # Neovim options
│   │   ├── keymaps.lua      # Key mappings
│   │   ├── autocmds.lua     # Autocommands
│   │   └── lazy.lua         # Plugin manager setup
│   └── plugins/             # Plugin specifications
│       ├── ui.lua           # UI plugins (theme, statusline, etc.)
│       ├── editor.lua       # Editor enhancements
│       ├── lsp.lua          # LSP configuration
│       ├── treesitter.lua   # Treesitter setup
│       ├── telescope.lua    # Fuzzy finder
│       ├── git.lua          # Git integration
│       └── lang/            # Language-specific configs
│           ├── lua.lua
│           ├── php.lua
│           └── typescript.lua
└── README.md
```

## Key Features

| Feature | Plugin |
|---------|--------|
| Plugin Manager | lazy.nvim |
| Fuzzy Finder | telescope.nvim |
| Syntax Highlighting | nvim-treesitter |
| LSP | nvim-lspconfig, mason.nvim |
| Completion | nvim-cmp, LuaSnip |
| Git | gitsigns.nvim, neogit |
| File Explorer | neo-tree.nvim |
| Status Line | lualine.nvim |
| Theme | catppuccin/nvim |
| Formatting | conform.nvim |
| Linting | nvim-lint |

## Leader Key

Default leader: `,` (comma)

Change to space in `lua/config/options.lua`:
```lua
vim.g.mapleader = " "
vim.g.maplocalleader = " "
```

## Essential Keybindings

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `<leader>e` | File explorer |
| `<leader>gg` | Neogit |
| `gd` | Go to definition |
| `gr` | References |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename |
| `<leader>f` | Format buffer |

## Troubleshooting

### Plugins not installing
```bash
rm -rf ~/.local/share/nvim/lazy
nvim --headless "+Lazy! sync" +qa
```

### LSP not working
```bash
:LspInfo
:Mason
```

### Treesitter parsers missing
```bash
:TSInstallAll
:TSUpdate
```

## Updating

```bash
cd ~/.config/nvim
git pull
nvim --headless "+Lazy! sync" +qa
```

## License

MIT License - Feel free to use and modify.
