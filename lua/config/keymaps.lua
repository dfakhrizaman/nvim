-- Window navigation (tmux-style)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to below split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to above split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right split" })

local buffers = require("config.buffers")
vim.keymap.set("n", "<leader>x", buffers.close_current, { desc = "Close buffer" })
