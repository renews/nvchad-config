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
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 250
