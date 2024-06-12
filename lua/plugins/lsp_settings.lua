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
          },
        },

        htmx = {
          filetypes = {
            "html",
            "templ",
          },
        },

        tailwindcss = {
          filetypes = {
            "html",
            "templ",
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
        tinymist = {},
      },
    },
  },
}
