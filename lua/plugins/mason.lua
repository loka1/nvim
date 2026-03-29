if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- Lua (for Neovim config)
        "lua-language-server",
        "stylua",

        -- PHP
        "intelephense",
        "phpactor",
        "blade-formatter",

        -- JavaScript/TypeScript/Next.js
        "typescript-language-server",
        "eslint-lsp",
        "prettier",
        "ts-node",

        -- Python
        "basedpyright",
        "black",
        "isort",
        "ruff",
        "debugpy",

        -- C/C++
        "clangd",
        "cmake",
        "cppdbg",

        -- Web (HTML/CSS/Tailwind)
        "tailwindcss-language-server",
        "css-lsp",
        "html-lsp",
        "emmet-language-server",

        -- Other useful tools
        "tree-sitter-cli",
        "jq",
      },
    },
  },
}
