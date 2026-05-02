-- You can also add or configure plugins by creating files in this `plugins/` folder

---@type LazySpec
return {
  -- Show hidden files in neo-tree file explorer by default
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        },
      },
    },
  },

  -- Color highlighting for CSS/Tailwind
  {
    "norcalli/nvim-colorizer.lua",
    event = "User AstroFile",
    opts = {
      filetypes = { "html", "css", "scss", "javascript", "typescript", "typescriptreact", "php", "blade", "vue", "svelte" },
    },
  },

  -- Highlight TODO, FIXME, etc comments
  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    opts = {},
  },

  -- Go language support
  {
    "rayx/go.nvim",
    ft = "go",
    dependencies = { "rayx/nvimtip", "nvim-lua/plenary.nvim" },
    opts = {
      goimports = "goimports",
      goformatters = { "gofumpt" },
      diagnostic = {
        virtual_text = false,
      },
    },
    config = function(_, opts)
      require("go").setup(opts)
    end,
  },

  -- Auto close tags in HTML/JSX/Blade/Vue
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },

  -- Git integration enhancements
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
    config = true,
  },

  -- Lazygit integration
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Git blame
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
        map("n", "<leader>hb", gitsigns.blame_line, "Blame Line")
      end,
    },
  },

  -- Enhanced autopairs
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
        Rule("{", "}", "css"),
        Rule("{", "}", "scss"),
      }
    end,
  },
}
