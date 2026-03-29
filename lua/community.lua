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

  -- Tailwind CSS
  { import = "astrocommunity.pack.tailwindcss" },

  -- Python
  { import = "astrocommunity.pack.python" },

  -- C/C++
  { import = "astrocommunity.pack.cpp" },

  -- Formatting & linting
  { import = "astrocommunity.pack.prettier" },
  { import = "astrocommunity.pack.eslint" },

  -- Useful extras
  { import = "astrocommunity.pack.git" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
}
