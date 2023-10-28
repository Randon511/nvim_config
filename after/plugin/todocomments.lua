local todocomments = require("todo-comments")

vim.keymap.set("n", "<leader>tt", function()
    vim.api.nvim_set_keymap('n', '<leader>tt', ':TodoTelescope<CR>', { noremap = true, silent = true })
end)
