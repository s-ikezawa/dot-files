vim.g.mapleader = " "

local keymap = vim.keymap

-- Insert Mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
keymap.set("i", "<C-h>", "<Left>", { desc = "Move one character to the left in insert mode" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down one line in insert mode" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up one line in insert mode" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move one character to the right in insert mode" })
keymap.set("i", "<C-a>", "<Home>", { desc = "Move to the beginning ot the line in insert mode" })
keymap.set("i", "<C-e>", "<End>", { desc = "Move to end of line in insert mode" })

-- FileExplorer
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

