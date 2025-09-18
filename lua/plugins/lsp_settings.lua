return {

  -- add additional lsp settings to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- templ will be automatically installed with mason and loaded with lspconfig
        templ = {
          filetypes = {
            "templ",
          },
        },

        html = {
          filetypes = {
            "html",
            "templ",
            "heex",
          },
        },

        htmx = {
          filetypes = {
            "html",
            "templ",
            "heex",
          },
        },

        gopls = {
          filetypes = {
            "go",
            "templ",
          },
        },
        bashls = {},
        docker_compose_language_service = {},
        dockerls = {},
        jsonls = {},
        lua_ls = {},
        marksman = {},
        pyright = {},
        ruff_lsp = {},
        rust_analyzer = {},
        taplo = {},
        tinymist = {
          settings = {
            formatterMode = "typstyle",
          },
        },
      },
    },
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
        rgb_fn = true,
        hsl_fn = true,
      },
    },
  },

  {
    "hrsh7th/nvim-cmp",
    dependecies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
}
