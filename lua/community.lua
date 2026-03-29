-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- PHP & Laravel
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.laravel" },
  { import = "astrocommunity.pack.blade" },

  -- JavaScript/TypeScript/Next.js
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.biome" }, -- Alternative to Prettier for JS/TS

  -- Tailwind CSS
  { import = "astrocommunity.pack.tailwindcss" },

  -- Python
  { import = "astrocommunity.pack.python" },

  -- C/C++
  { import = "astrocommunity.pack.cpp" },

  -- Formatting & linting
  { import = "astrocommunity.pack.prettier" },
  { import = "astrocommunity.pack.eslint" },

  -- Database & ORM support
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.prisma" },

  -- DevOps & Config files
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },

  -- Git integration
  { import = "astrocommunity.git.diffview-nvim" },

  -- Completion enhancements
  { import = "astrocommunity.completion.cmp-git" },
  { import = "astrocommunity.completion.cmp-emoji" },

  -- LSP enhancements
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.nvim-lsp-file-operations" },

  -- Editing enhancements
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  { import = "astrocommunity.editing-support.conform-nvim" },
}
