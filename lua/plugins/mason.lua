-- Customize Mason

---@type LazySpec
return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = {
    ensure_installed = {
      -- Lua
      "lua-language-server",
      "stylua",

      -- PHP
      "intelephense",
      "phpactor",
      "blade-formatter",

      -- JavaScript/TypeScript
      "typescript-language-server",
      "eslint-lsp",
      "prettierd",

      -- Python
      "basedpyright",
      "black",
      "isort",
      "ruff",
      "debugpy",

      -- C/C++
      "clangd",
      "codelldb",

      -- Web
      "tailwindcss-language-server",
      "css-lsp",
      "html-lsp",

      -- Config files
      "yaml-language-server",
      "json-lsp",
    },
  },
}
