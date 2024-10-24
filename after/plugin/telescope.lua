local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fzf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.api.nvim_set_keymap('n', '<leader>km', ':lua require("telescope.builtin").keymaps()<CR>', { noremap = true, silent = true })

