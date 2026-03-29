-- You can also add or configure plugins by creating files in this `plugins/` folder

---@type LazySpec
return {

  -- == Add useful plugins for web development ==

  -- Laravel development helpers
  {
    "simrat39/laravel.nvim",
    ft = "php",
    config = true,
  },

  -- Color highlighting for CSS/ Tailwind
  {
    "norcalli/nvim-colorizer.lua",
    event = "User AstroFile",
    opts = {
      filetypes = { "html", "css", "scss", "javascript", "typescript", "typescriptreact", "php", "blade" },
    },
  },

  -- Highlight TODO, FIXME, etc comments
  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    opts = {},
  },

  -- Auto close tags in HTML/JSX/Blade
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },

  -- Git integration enhancements
  {
    "lewis6991/gitsigns.nvim",
    event = "User AstroFile",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
      on_attach = function(bufnr)
        local gitsigns = require("gitsigns")
        local map = function(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
        end
        map("n", "]h", gitsigns.next_hunk, "Next Hunk")
        map("n", "[h", gitsigns.prev_hunk, "Prev Hunk")
        map("n", "<leader>hs", gitsigns.stage_hunk, "Stage Hunk")
        map("n", "<leader>hr", gitsigns.reset_hunk, "Reset Hunk")
      end,
    },
  },

  -- == Override default plugins ==

  -- Extend snippets for React/TypeScript
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
      luasnip.filetype_extend("typescript", { "typescriptreact" })
      luasnip.filetype_extend("html", { "blade", "php" })
      require "astronvim.plugins.configs.luasnip"(plugin, opts)
    end,
  },

  -- Enhanced autopairs for web development
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts)
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"

      npairs.add_rules {
        Rule("'", "'", { "javascript", "typescript", "typescriptreact", "javascriptreact" }),
        Rule('"', '"', { "javascript", "typescript", "typescriptreact", "javascriptreact" }),
        Rule("{{", "}}", "blade"),
      }
    end,
  },
}
