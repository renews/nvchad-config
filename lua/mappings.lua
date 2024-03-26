require("nvchad.mappings")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>x", "")
map("n", "<leader>b", "")
map("n", "s", "")

-- default commands
map("i", "<C-s>", "<ESC>:w<CR>", { desc = "Save file" })
map("n", "<C-s>", ":w<CR>", { desc = "Save File" })

-- buffer navigation
map("n", "<C-h>", "<C-w>h", { desc = "Navigate to the left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Navigate to the bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Navigate to the top window" })
map("n", "<C-l>", "<C-w>l", { desc = "Navigate to the right window" })
map("n", "<leader>bb", ":enew<CR>", { desc = "New buffer" })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })
map("n", "<C-q>", ":bd<CR>", { silent = true, noremap = true, desc = "Close buffer" })
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

map("n", "<leader><leader>", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

vim.g.copilot_no_tab_map = true
-- vim-test
map("n", "<leader>Tn", ":TestNearest<CR>", { desc = "Test the nearest function." })
map("n", "<leader>Tf", ":TestFile<CR>", { desc = "Test current file." })
map("n", "<leader>Ts", ":TestSuite<CR>", { desc = "Test everything." })
map("n", "<leader>Tl", ":TestLast<CR>", { desc = "Test the last test." })
map("n", "<leader>Tg", ":TestVisit<CR>", { desc = "Open the test file from the last test." })

-- Spectre (search and replace)
map("n", "<leader>so", ":lua require('spectre').open()<CR>", { desc = "Search and replace - Toggle" })
map("n", "<leader>sw", ":lua require('spectre').open_visual({select_word=true})<CR>", { desc = "Search current word" })
map("v", "<leader>sw", "<ESC>:lua require('spectre').open_visual()<CR>", { desc = "Search current word" })
map(
	"n",
	"<leader>sp",
	":lua require('spectre').open_file_search({select_word=true})<CR>",
	{ desc = "Search on current file" }
)

-- map("n", "<leader><leader>", ":so<CR>", { desc = "Source the current file" })
map("n", "<leader>sc", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace" })
map("n", "<leader>xe", "<cmd>!chmod +x %<CR>", { silent = true }, { desc = "Set file as executable" })

map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true }, { desc = "Move line up" })
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true }, { desc = "Move line down" })

map("n", "J", "mzJ`z", { noremap = true, silent = true }, { desc = "Join lines" })
map("n", "n", "nzzzv", { noremap = true, silent = true }, { desc = "Move to next search item" })
map("n", "N", "Nzzzv", { noremap = true, silent = true }, { desc = "Move to previous search item" })

map("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end, { desc = "Start Vim with me" })
map("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end, { desc = "Stop Vim with me" })

map("x", "<leader>p", [["_dP]], { desc = "Paste over selection" })

-- next greatest remap ever : asbjornHaland
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to clipboard" })
map("n", "<leader>Y", [["+Y]], { desc = "Copy to clipboard" })
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Cut to clipboard" })

map("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next quickfix item" })
map("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Previous quickfix item" })
map("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next location list item" })
map("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous location list item" })
