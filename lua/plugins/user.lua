-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Note: Laravel plugin is already loaded via astrocommunity.pack.laravel

---@type LazySpec
return {
  -- Add vim commands for Laravel (the plugin uses Lua API, not vim commands)
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      local maps = assert(opts.mappings)
      -- Laravel vim commands
      vim.api.nvim_create_user_command("Laravel", function(opts)
        local args = opts.args
        if args == "" then
          require("nio").run(function() Laravel.commands.run("artisan") end)
        else
          require("nio").run(function() Laravel.commands.run("artisan " .. args) end)
        end
      end, { nargs = "?", desc = "Laravel artisan commands" })

      vim.api.nvim_create_user_command("Artisan", function(opts)
        require("nio").run(function() Laravel.commands.run("artisan") end)
      end, { nargs = 0, desc = "Laravel artisan" })

      vim.api.nvim_create_user_command("Composer", function(opts)
        require("nio").run(function() Laravel.commands.run("composer") end)
      end, { nargs = 0, desc = "Laravel composer" })

      vim.api.nvim_create_user_command("Sail", function(opts)
        require("nio").run(function() Laravel.commands.run("sail") end)
      end, { nargs = 0, desc = "Laravel sail" })

      vim.api.nvim_create_user_command("Npm", function(opts)
        require("nio").run(function() Laravel.commands.run("npm") end)
      end, { nargs = 0, desc = "Laravel npm" })

      vim.api.nvim_create_user_command("Yarn", function(opts)
        require("nio").run(function() Laravel.commands.run("yarn") end)
      end, { nargs = 0, desc = "Laravel yarn" })
    end,
  },

  -- Blade navigation
  {
    "ricardoramirezr/blade-nav.nvim",
    ft = { "blade", "php" },
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

  -- Auto close tags in HTML/JSX/Blade/Vue
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },

  -- Git integration enhancements (diffview for PR-like experience)
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

  -- Better git blame
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

  -- TypeScript CLI for type checking
  {
    "dmmulroy/tsc.nvim",
    cmd = "TSC",
    opts = {
      keymaps = {
        open_quickfix = "<leader>lq",
      },
    },
  },

  -- Package.json info
  {
    "vuki656/package-info.nvim",
    event = "BufRead package.json",
    opts = {},
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
      luasnip.filetype_extend("typescript", { "vue" })
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
        Rule("{", "}", "css"),
        Rule("{", "}", "scss"),
      }
    end,
  },

  -- Surround plugin for easy quote/bracket changes (nvim-surround from astrocommunity)
  -- Keybindings: gsa (add), gsd (delete), gsr (replace), gs<character>
}
