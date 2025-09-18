return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "gofumpt",
        "goimports",
        "gomodifytags",
        "markdownlint",
        "markdown-toc",
        -- "typstfmt"
        "ruff",
      },
    },
  },
}
