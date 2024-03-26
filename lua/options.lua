require("nvchad.options")

local opt = vim.opt
local o = vim.o
local g = vim.g

-- general
opt.relativenumber = true
-- o.columns = 120

-- plugins
-- g.coq_settings = { auto_start = "shut-up" }

-- Indenting
o.expandtab = true
o.smartindent = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

o.cursorlineopt = "both"
-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 250

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.colorcolumn = "120"
