vim.g.mapleader = " "

-- View file explorer
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<cr>")

-- Move visual selection up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Rename symbol under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Delete to *black hole* register and keep whatever's been last yanked/deleted
vim.keymap.set("n", "<leader>d", '"_d')
