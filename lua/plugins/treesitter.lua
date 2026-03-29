if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- Core
      "lua",
      "vim",
      "vimdoc",

      -- PHP & Laravel
      "php",
      "blade",

      -- JavaScript/TypeScript/Next.js
      "javascript",
      "typescript",
      "tsx",
      "jsdoc",
      "astro", -- For Astro framework

      -- HTML/CSS
      "html",
      "css",
      "scss",
      "svelte",
      "vue",

      -- Python
      "python",
      "pymanifest",

      -- C/C++
      "cpp",
      "c",
      "cmake",

      -- Config & Data
      "json",
      "yaml",
      "toml",
      "json5",

      -- DevOps
      "dockerfile",
      "terraform",
      "hcl",

      -- Database
      "sql",
      "prisma",

      -- Other useful languages
      "markdown",
      "markdown_inline",
      "regex",
      "gitignore",
      "bash",
      "make",
      "rust", -- Often useful for tooling
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
    },
  },
}
