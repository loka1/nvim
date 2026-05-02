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

      -- PHP
      "php",
      "blade",

      -- JavaScript/TypeScript
      "javascript",
      "typescript",
      "tsx",
      "jsdoc",

      -- HTML/CSS
      "html",
      "css",
      "scss",

      -- Python
      "python",

      -- C/C++
      "cpp",
      "c",
      "cmake",

      -- Config files
      "json",
      "yaml",
      "toml",

      -- Go
      "go",

      -- Other
      "markdown",
      "markdown_inline",
      "regex",
      "bash",
      "dockerfile",
    },
    highlight = { enable = true },
    indent = { enable = true },
    fold = { enable = true },
  },
}
