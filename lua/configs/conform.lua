local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },
		ruby = { "standardrb" },
		-- python = { "isort" },
		elixir = { "mix format" },
		html = { "prettier" },
		-- markdown = { "markdownlint" },
		terraform = { "terraform_fmt" },
		javascript = { { "prettier" } },
		go = { "templ", "gofmt" },
		-- zig = { "zigfmt" },
		yaml = { "yamlfix" },
		xml = { "xmllint" },
		rust = { "rustfmt" },
		-- sql = { "sqlfmt" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

require("conform").setup(options)
