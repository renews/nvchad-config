require("nvchad.mappings")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>x", "")
map("n", "<leader>b", "")

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

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- copilot completions
map("i", "<C-l>", "<Plug>(copilot-accept-line)", { desc = "Copilot: Accept line" })
map("i", "<A-Right>", "<Plug>(copilot-accept-word)", { desc = "Copilot: Accept word" })
map("i", "<A-]>", "<Plug>(copilot-next)", { desc = "Copilot: Next" })
map("i", "<A-[>", "<Plug>(copilot-previous)", { desc = "Copilot: Previous" })
map("i", "<A-Bslash>", "<Plug>(copilot-suggest)", { desc = "Copilot: Suggest" })

-- copilot chat
map("n", "<leader>cc", ":CopilotChatToggle<CR>", { desc = "Copilot: Toggle Chat" })
map("n", "<leader>cr", ":CopilotChatReset<CR>", { desc = "Copilot: Reset Chat" })
map("n", "<leader>ce", ":CopilotChatExplain<CR>", { desc = "Copilot: Explain" })
map("n", "<leader>ct", ":CopilotChatTests<CR>", { desc = "Copilot: Generate test" })
map("n", "<leader>cd", ":CopilotChatDocs<CR>", { desc = "Copilot: Write docs" })
map("n", "<leader>co", ":CopilotChatCommitStaged<CR>", { desc = "Copilot: Commit message for staged files" })

map("n", "<leader>lg", ":LazyGit<CR>", { desc = "LazyGit" })

-- trouble (LSP diagnostics)
map("n", "<leader>xx", function()
	require("trouble").toggle()
end, { desc = "Trouble: Toggle" })
map("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end, { desc = "Trouble: Workspace diagnostics" })
map("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Trouble: Document diagnostics" })
map("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end, { desc = "Trouble: Quickfix" })
map("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end, { desc = "Trouble: Loclist" })
map("n", "gR", function()
	require("trouble").toggle("lsp_references")
end, { desc = "Trouble: LSP references" })

-- vim-test
map("n", "<leader>Tn", ":TestNearest<CR>", { desc = "Test the nearest function." })
map("n", "<leader>Tf", ":TestFile<CR>", { desc = "Test current file." })
map("n", "<leader>Ts", ":TestSuite<CR>", { desc = "Test everything." })
map("n", "<leader>Tl", ":TestLast<CR>", { desc = "Test the last test." })
map("n", "<leader>Tg", ":TestVisit<CR>", { desc = "Open the test file from the last test." })

-- Spectre (search and replace)
map("n", "<leader>s", ":lua require('spectre').open()<CR>", { desc = "Search and replace - Toggle" })
map("n", "<leader>sw", ":lua require('spectre').open_visual({select_word=true})<CR>", { desc = "Search current word" })
map("v", "<leader>sw", "<ESC>:lua require('spectre').open_visual()<CR>", { desc = "Search current word" })
map(
	"n",
	"<leader>sp",
	":lua require('spectre').open_file_search({select_word=true})<CR>",
	{ desc = "Search on current file" }
)
