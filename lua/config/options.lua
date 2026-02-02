vim.g.mapleader = " "
vim.g.maplocalleader = "."

-- Scrolling with centering
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Scroll up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll down" })
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true, desc = "Next search result" })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true, desc = "Previous search result" })

-- Clipboard: separate system clipboard from internal registers
-- Use <leader>y / <leader>p for system clipboard
-- Use y / p for internal nvim register
vim.opt.clipboard = ""

-- Clipboard keymaps
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste before from clipboard" })

-- Display
vim.opt.wrap = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Editing
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 200
vim.opt.timeoutlen = 300

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true
