vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- FileExplorer
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

