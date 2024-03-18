return {
  {
    -- https://github.com/stevearc/conform.nvim
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },
  {
  "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "elixir-ls",
        "erlang-ls",
        "erlang-debugger",
        "standardrb",
        "gopls",
        "htmx-lsp",
        "nginx-language-server",
        "terraform-ls",
        "tailwindcss-language-server",
        "solargraph",
        "rust-analyzer",
        "pyright",
        "marksman",
        "nginx-language-server"
      },
    },
  },
    -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
     config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
     end,
  },
  {
    -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "vimdoc",
        "gitignore",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "scss",
        "astro",

        -- loved ones
        "elixir",
        "eex",
        "erlang",
        "fish",
        "go",
        "ruby",
        "rust",
        "templ",
        
        -- garbages
        "c",
        "jq",
        "po",
        "python",
        "sql",
        "terraform",
        "zig"
      },
    },
  },
}
