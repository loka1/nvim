-- AstroCommunity: import any community modules here

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- PHP
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.blade" },

  -- JavaScript/TypeScript
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },

  -- Tailwind CSS
  { import = "astrocommunity.pack.tailwindcss" },

  -- Python
  { import = "astrocommunity.pack.python" },

  -- C/C++
  { import = "astrocommunity.pack.cpp" },

  -- Formatting & linting
  { import = "astrocommunity.pack.prettier" },
  { import = "astrocommunity.pack.eslint" },

  -- Config files
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },

  -- Git
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.completion.cmp-git" },
  { import = "astrocommunity.completion.cmp-emoji" },

  -- LSP enhancements
  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  -- Editing
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
}
