-- Enable clipboard support
-- vim.api.nvim_set_option("clipboard", "unnamed")
vim.cmd("set clipboard+=unnamedplus")

vim.opt.clipboard = "unnamed,unnamedplus"

-- Map a key to copy to the clipboard (optional)
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.wo.number = true

-- Window resizing (new mappings)
-- Increase width
vim.keymap.set("n", "<leader>+", ":vertical resize +5<CR>", { noremap = true })
-- Decrease width
vim.keymap.set("n", "<leader>-", ":vertical resize -5<CR>", { noremap = true })
