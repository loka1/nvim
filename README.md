# My AstroNvim Configuration

**NOTE:** This is for AstroNvim v5+

A customized [AstroNvim](https://github.com/AstroNvim/AstroNvim) configuration for PHP, Laravel, Next.js, TypeScript, Python, and C++ development.

## 🛠️ Installation

#### Clone the repository

```shell
git clone https://github.com/loka1/nvim ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

The first launch will install all plugins and language servers automatically.

## 📦 Supported Languages

| Language | Tools Included |
|----------|----------------|
| **PHP & Laravel** | Intelephense, PHPActor, blade-formatter, Pint, Laravel.nvim |
| **JavaScript/TypeScript** | vtsls, ESLint, Prettier, Biome, tsc.nvim |
| **HTML/CSS** | Tailwind CSS, Emmet, colorizer, postcss |
| **Python** | basedpyright, black, isort, ruff, debugpy |
| **C/C++** | clangd, cmake, cppdbg, clangd_extensions |
| **DevOps** | Docker, Terraform, hadolint, tflint |
| **Database** | SQL, Prisma ORM support |

## ⚡ Features

### Code Quality
- Format on save (configurable per filetype)
- Linting with ESLint, Ruff, Biome
- Inlay hints for types and parameters
- Semantic token highlighting

### Git Integration
- **gitsigns.nvim** - Inline git blame, stage/reset hunks
- **diffview.nvim** - PR-like diff view, file history
- **lazygit.nvim** - Terminal Git GUI (`<Space>gg`)

### Laravel Enhancements
- Artisan commands (`<Leader>La`)
- Route viewer (`<Leader>Lr`)
- Composer/Npm/Yarn integration (`<Leader>Lc`, `<Leader>Ln`, `<Leader>Ly`)
- IDE helper for models (`<Leader>Lia`)
- Blade navigation

### TypeScript/Next.js Enhancements
- Organize imports (`<Leader>lo`)
- Remove unused (`<Leader>lR`)
- Rename file (`<Leader>lr`)
- Add missing imports (`<Leader>li`)
- Update TS files (`<Leader>lu`)
- Type checking with tsc.nvim
- package.json info

### Productivity
- Auto-close tags (HTML/JSX/Blade/Vue)
- Auto-pairs for brackets and quotes
- Surround text objects (`gsa`, `gsd`, `gsr`)
- TODO/FIXME comment highlighting
- Color preview in CSS/Tailwind
- Emoji completion
- Git commit message completion

## 🎯 Keybindings

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<Space>gg` | Open LazyGit |
| `<Space>gb` | Git blame line |
| `<Space>hs` | Stage hunk |
| `<Space>hr` | Reset hunk |
| `]h` / `[h` | Next/Prev git hunk |
| `<Leader>L` | Laravel commands |
| `<Leader>l` | LSP commands |
| `gsa` | Add surround |
| `gsd` | Delete surround |
| `gsr` | Replace surround |

## 🔧 Commands

- `:Lazy` - Plugin manager
- `:Mason` - Language server package manager
- `:LazyGit` - Open LazyGit UI
- `:DiffviewOpen` - Open diff view
- `:TSC` - Run TypeScript type check

