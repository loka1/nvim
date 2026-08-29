-- Laravel-specific support (main stack: PHP + Laravel)
return {
  -- Blade template syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = vim.list_extend(opts.ensure_installed or {}, { "blade", "php_only" })
    end,
  },

  -- Use Pint for formatting Laravel code, fall back to php_cs_fixer for non-Laravel
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { "pint" },
        blade = { "pint" },
      },
    },
  },

  -- Format Blade files on save (Pint is a file-based tool, not stdin)
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters = {
        pint = {
          command = "pint",
          args = { "$FILENAME", "--preset", "laravel" },
          stdin = false,
        },
      },
    },
  },
}
