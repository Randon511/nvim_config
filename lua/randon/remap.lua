vim.keymap.set("", "<space>", "<nop>")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Toggle relative line number
vim.keymap.set("n", "<leader>nr", function()
		vim.opt.relativenumber = true
end)

vim.keymap.set("n", "<leader>na", function()
		vim.opt.relativenumber = false
end)

-- Move highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append next line to current line without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Half place jump with curor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace currently highlighted word
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Clear highlight
vim.keymap.set("n", "<leader>ch", vim.cmd.nohlsearch)

-- Open quickfix list
vim.keymap.set("n", "<leader>qf", function()
  vim.diagnostic.setqflist()
end)
