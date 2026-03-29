if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
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

      -- HTML/CSS
      "html",
      "css",
      "scss",
      "svelte",

      -- Python
      "python",
      "pymanifest",

      -- C/C++
      "cpp",
      "c",
      "cmake",

      -- Other useful languages
      "json",
      "yaml",
      "toml",
      "markdown",
      "markdown_inline",
      "regex",
      "gitignore",
      "dockerfile",
      "bash",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
