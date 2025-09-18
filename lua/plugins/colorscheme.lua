return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        functions = { italic = true },
        keywords = { italic = true },
        -- constant = { italic = true },
        -- module = { italic = true },
        -- variables = { italic = true },
      },
    },
  },
  {
    "maxmx03/fluoromachine.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local fm = require("fluoromachine")

      fm.setup({
        glow = false,
        -- brightness = 0.05,
        theme = "fluoromachine",
        -- theme = "delta",
        -- theme = "retrowave",
        transparent = false,
        overrides = {
          ["@type"] = { italic = true, bold = false },
          ["@function"] = { italic = false, bold = false },
          ["@comment"] = { italic = true },
          ["@keyword"] = { italic = false },
          ["@constant"] = { italic = false, bold = false },
          ["@variable"] = { italic = true },
          ["@field"] = { italic = true },
          ["@parameter"] = { italic = true },
        },
        colors = function(_, color)
          local darken = color.darken
          local lighten = color.lighten
          local blend = color.blend
          local shade = color.shade
          local tint = color.tint
          return {
            bg = "#291940",
            bgdark = darken("#291940", 20),
            cyan = "#49eaff",
            red = "#ff1e34",
            yellow = "#ffe756",
            orange = "#f38e21",
            pink = "#ffadff",
            purple = "#9544f7",
          }
        end,
      })
    end,
  },
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      theme = {
        style = "dark", --  "dark" | "light"
        contrast = "default", -- "default" | "high"
        transparent = false, -- true | false
      },
      colors = {
        mode = "default", -- "default" | "dark" | "light"
        fluo = "pink", -- "pink" | "cyan" | "yellow" | "orange" | "green"
        custom = {
          -- saturation = "10", -- "" | string representing an integer between 0 and 100
          -- light = "40", -- "" | string representing an integer between 0 and 100
        },
      },
      ui = {
        borders = "inverse", -- "theme" | "inverse" | "fluo" | "none"
        aggressive_spell = false, -- true | false
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "catppuccin",
      -- colorscheme = "oxocarbon",
      -- colorscheme = "eldritch-dark",
      colorscheme = "eldritch",
      -- colorscheme = "fluoromachine",
      -- colorscheme = "tokyonight-storm",
      -- colorscheme = "tokyonight",
      -- colorscheme = "flow",
    },
  },
}
