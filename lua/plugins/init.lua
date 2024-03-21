return {
	{ "github/copilot.vim" },
	{ "dmmulroy/ts-error-translator.nvim" },
	-- { "letieu/hacker.nvim" },
	{ "folke/flash.nvim", opts = {} },
	{ "nvim-pack/nvim-spectre", opts = {} },
	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"folke/zen-mode.nvim",
		opts = {},
	},
	{
		"zeioth/garbage-day.nvim",
		dependencies = "neovim/nvim-lspconfig",
		event = "VeryLazy",
		opts = {},
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup({})
		end,
	},
	{
		"pwntester/octo.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {},
	},
	-- {
	-- 	"m4xshen/hardtime.nvim",
	-- 	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
	-- 	opts = {
	-- 		disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason", "oil" },
	-- 	},
	-- },
	{ "lukas-reineke/headlines.nvim", dependencies = "nvim-treesitter/nvim-treesitter", opts = {} },
	-- {
	-- 	"ms-jpq/coq_nvim",
	-- 	branch = "coq",
	-- 	build = ":COQdeps",
	-- },
	-- { "ms-jpq/coq.artifacts", branch = "artifacts" },
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },
	{
		"rmagatti/auto-session",
		opts = {
			auto_restore_enabled = true,
			log_level = "error",
			auto_session_enable_last_session = true,
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		},
	},
	{ "folke/neodev.nvim", opts = {} },
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	},

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim" },
		},
		opts = {},
	},
	{
		-- https://github.com/stevearc/conform.nvim
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
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
				"nginx-language-server",
			},
		},
	},
	-- In order to modify the `lspconfig` configuration:
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
	{
		-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
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
				"heex",
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
				"zig",
			},
			auto_install = true,
			highlight = { enable = true, use_languagetree = true },
			indent = { enable = true },
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		cmd = "Telescope",
		event = "VeryLazy",
		opts = {
			file_ignore_patterns = { "^./.git/", "^node_modules/", "^vendor/", "^_build/", "^dist/", "^deps/" },
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		event = "VeryLazy",
		cmd = { "TodoQuickFix" }, -- open when typing command
		keys = {
			{ "<leader>TT", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
		},
	},
	{ "echasnovski/mini.nvim", version = false },
}
