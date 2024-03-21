-- https://github.com/neovim/nvim-lspconfig
local configs = require("nvchad.configs.lspconfig")
-- local coq = require("coq")

local servers = {
	html = {},
	cssls = {},
	clangd = {},
	awk_ls = {},
	astro = {},
	bashls = {},
	css_variables = {},
	dockerls = {},
	elixirls = { cmd = { "/Users/coder/elixir-ls/language_server.sh" } },
	erlangls = {},
	gdscript = {},
	gleam = {},
	gopls = {},
	graphql = {},
	htmx = {},
	jqls = {},
	jsonls = {},
	lua_ls = {},
	marksman = {},
	nginx_language_server = {},
	pyright = {},
	standardrb = {},
	rust_analyzer = {},
	sqls = {},
	svelte = {},
	tailwindcss = {},
	templ = {},
	tsserver = {},
	terraform_lsp = {},
	unocss = {},
	yamlls = {},
}

for name, opts in pairs(servers) do
	opts.on_init = configs.on_init
	opts.on_attach = configs.on_attach
	opts.capabilities = configs.capabilities
	-- opts.capabilities = coq.lsp_ensure_capabilities(configs.capabilities)

	require("lspconfig")[name].setup(opts)
end
