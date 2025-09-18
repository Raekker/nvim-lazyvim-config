return {
  {
    "julienvincent/hunk.nvim",
    cmd = { "DiffEditor" },
    config = function()
      require("hunk").setup()
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  { "nvim-mini/mini.icons", version = "*" },
  -- {
  --   "vyfor/cord.nvim",
  --   build = "./build || .\\build",
  --   event = "VeryLazy",
  --   opts = {}, -- calls require('cord').setup()
  -- },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      terminal = {
        win = {
          border = "rounded",
          position = "float",
        },
      },
    },
    keys = {
      {
        "<c-/>",
        function()
          Snacks.terminal.toggle("nu")
        end,
        desc = "Toggle Terminal",
      },
    },
  },
  -- {
  --   "https://github.com/fresh2dev/zellij.vim",
  --   -- Pin version to avoid breaking changes.
  --   -- tag = '0.3.*',
  --   lazy = false,
  --   init = function()
  --     -- Options:
  --     -- vim.g.zelli_navigator_move_focus_or_tab = 1
  --     -- vim.g.zellij_navigator_no_default_mappings = 1
  --   end,
  -- },
  {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
      "neovim/nvim-lspconfig", -- optional
    },
    opts = {}, -- your configuration
  },
}
