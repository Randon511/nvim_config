local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ps', builtin.find_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_files, {})
vim.keymap.set('n', '<leader>pf', builtin.live_grep, {})
