local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>.', function()
    builtin.find_files({ hidden = true});
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})


