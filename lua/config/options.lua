vim.g.mapleader = " "
vim.g.maplocalleader = "."
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Scroll up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll down" })

vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = true
