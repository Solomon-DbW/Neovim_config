local builtin = require('telescope.builtin')

-- Find files using Telescope
vim.keymap.set('n', '<leader>fzf', builtin.find_files, {})

-- Find Git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Grep with a custom input
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Show keymaps
vim.api.nvim_set_keymap('n', '<leader>km', ':lua require("telescope.builtin").keymaps()<CR>', { noremap = true, silent = true })

