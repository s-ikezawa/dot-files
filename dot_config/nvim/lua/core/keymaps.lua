vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move one character to the left in insert mode" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move one character to the right in insert mode" })
vim.keymap.set("i", "<C-a>", "<Home>", { desc = "Move to the beginning ot the line in insert mode" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "Move to end of line in insert mode" })
