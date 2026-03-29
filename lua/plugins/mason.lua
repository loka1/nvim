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

        -- PHP & Laravel
        "intelephense",
        "phpactor",
        "blade-formatter",
        "pint", -- Laravel PHP formatter

        -- JavaScript/TypeScript/Next.js
        "vtsls", -- Better TypeScript language server
        "eslint-lsp",
        "prettierd", -- Faster prettier
        "biome", -- Alternative JS/TS formatter/linter
        "ts-node",

        -- Python
        "basedpyright",
        "black",
        "isort",
        "ruff",
        "ruff-lsp",
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

        -- Database & ORM
        "prisma-language-server",

        -- DevOps
        "docker-language-server",
        "hadolint", -- Dockerfile linter
        "terraform-ls",
        "tflint",

        -- Config files
        "yaml-language-server",
        "json-lsp",

        -- Other useful tools
        "tree-sitter-cli",
        "jq",
      },
    },
  },
}
