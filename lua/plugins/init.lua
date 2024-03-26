return {
	{
		"github/copilot.vim",
		keys = {
			{
				"<C-l>",
				'copilot#Accept("\\<CR>")',
				expr = true,
				replace_keycodes = false,
				silent = true,
				mode = "i",
				desc = "Copilot: Accept suggestion",
			},
			{ "<A-Right>", "<Plug>(copilot-accept-word)", mode = "i", desc = "Copilot: Accept word" },
			{ "<A-]>", "<Plug>(copilot-next)", mode = "i", desc = "Copilot: Next" },
			{ "<A-[>", "<Plug>(copilot-previous)", mode = "i", desc = "Copilot: Previous" },
			{ "<A-Bslash>", "<Plug>(copilot-suggest)", mode = "i", desc = "Copilot: Suggest" },
		},
	},
	"nvim-lua/plenary.nvim", -- dependency for many plugins
	{
		"mbbill/undotree",
		keys = {
			{ "<leader>u", ":UndotreeToggle<CR>", desc = "Toggle undotree" },
		},
	},
	"dmmulroy/ts-error-translator.nvim",
	"letieu/hacker.nvim",
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
  -- stylua: ignore
  keys = {
    { "q", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "Q", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-S>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
	},
	"nvim-pack/nvim-spectre",
	"folke/zen-mode.nvim",
	"folke/neodev.nvim",
	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup({})
		end,
	},
	{ "lukas-reineke/headlines.nvim", dependencies = "nvim-treesitter/nvim-treesitter", opts = {} },
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		keys = {
			{ "<leader>tt", "<cmd>TroubleToggle<cr>", desc = "Trouble: Toggle" },
			{
				"<leader>tw",
				"<cmd>TroubleToggle lsp_workspace_diagnostics<cr>",
				desc = "Trouble: Workspace diagnostics",
			},
			{
				"<leader>td",
				"<cmd>TroubleToggle lsp_document_diagnostics<cr>",
				desc = "Trouble: Document diagnostics",
			},
			{ "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble: Quickfix" },
			{ "<leader>tl", "<cmd>TroubleToggle loclist<cr>", desc = "Trouble: Loclist" },
			{ "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "Trouble: LSP references" },
		},
	},
	{
		"rmagatti/auto-session",
		opts = {
			auto_restore_enabled = true,
			log_level = "error",
			auto_session_enable_last_session = true,
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		},
	},
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>lg", ":LazyGit<CR>", desc = "LazyGit" },
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
		keys = {
			{
				"<leader>cc",
				":CopilotChatToggle<CR>",
				desc = "Copilot: Toggle Chat",
				{ noremap = true, silent = true },
			},
			{ "<leader>cr", ":CopilotChatReset<CR>", desc = "Copilot: Reset Chat" },
			{ "<leader>ce", ":CopilotChatExplain<CR>", desc = "Copilot: Explain" },
			{ "<leader>ct", ":CopilotChatTests<CR>", desc = "Copilot: Generate test" },
			{ "<leader>cd", ":CopilotChatDocs<CR>", desc = "Copilot: Write docs" },
			{ "<leader>co", ":CopilotChatCommitStaged<CR>", desc = "Copilot: Commit message for staged files" },
		},
	},
	{ "stevearc/conform.nvim", opts = { require("configs.conform") } },
	{ "nvim-tree/nvim-tree.lua", opts = { git = { enable = true } } },
	{ "williamboman/mason.nvim", opts = { require("configs.mason") } },
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
				"bash",
				"regex",
				"markdown_inline",
				-- web dev
				"html",
				"css",
				"javascript",
				"typescript",
				"jsdoc",
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
	-- {
	-- 	"folke/noice.nvim",
	-- 	event = "VeryLazy",
	-- 	opts = {
	-- 		lsp = {
	-- 			hover = {
	-- 				enabled = false,
	-- 			},
	-- 			signature = {
	-- 				enabled = false,
	-- 			},
	-- 			override = {
	-- 				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
	-- 				["vim.lsp.util.stylize_markdown"] = true,
	-- 				-- ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
	-- 			},
	-- 		},
	-- 		presets = {
	-- 			bottom_search = true, -- use a classic bottom cmdline for search
	-- 			-- command_palette = true, -- position the cmdline and popupmenu together
	-- 			long_message_to_split = true, -- long messages will be sent to a split
	-- 			inc_rename = false, -- enables an input dialog for inc-rename.nvim
	-- 			lsp_doc_border = false, -- add a border to hover docs and signature help
	-- 		},
	-- 	},
	-- 	dependencies = {
	-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	-- 		"MunifTanjim/nui.nvim",
	-- 		-- OPTIONAL:
	-- 		--   `nvim-notify` is only needed, if you want to use the notification view.
	-- 		--   If not available, we use `mini` as the fallback
	-- 		"rcarriga/nvim-notify",
	-- 	},
	-- },
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("go").setup()

		end,
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
	},
	{
		"mrjones2014/legendary.nvim",
		priority = 10000,
		lazy = false,
	},
	-- { "echasnovski/mini.ai", version = false, opts = {} },
	-- { "echasnovski/mini.align", version = false, opts = {} },
	-- { "echasnovski/mini.bracketed", version = false, opts = {} },
	-- { "echasnovski/mini.cursorword", version = false, opts = {} },
	{ "echasnovski/mini.jump2d", version = false, opts = {} },
	-- { "echasnovski/mini.splitjoin", version = false, opts = {} },
	-- { "echasnovski/mini.starter", version = false, opts = {} },
	-- { "echasnovski/mini.surround", version = false, opts = {} },
	-- { "echasnovski/mini.trailspace", version = false, opts = {} },
}
