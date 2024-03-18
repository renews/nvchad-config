-- https://github.com/neovim/nvim-lspconfig
local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "awk_ls", "astro", "bashls", "css_variables", "dockerls", "elixirls", "erlangls", "gdscript", "gleam", "gopls", "graphql", "htmx", "jqls", "jsonls", "lua_ls", "marksman", "nginx_language_server", "pyright", "standardrb", "rust_analyzer", "sqls", "svelte","tailwindcss", "templ", "tsserver", "terraform_lsp", "unocss", "yamlls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
