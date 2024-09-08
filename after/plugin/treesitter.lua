require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "asm", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "typescript", "python", "bash", "cpp", "dockerfile", "go", "haskell", "html", "java", "json", "lua", "markdown", "markdown_inline", "pascal", "php", "rust", "sql", "vim" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  -- ignore_install = { "javascript" },


  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  fold = {
    enable = true
  }
}

-- Enable Treesitter-based folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevelstart = 1  -- Start with folds open to level 1

-- Keybindings for fold management
vim.api.nvim_set_keymap('n', '<leader>z', 'za', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', 'zR', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', 'zM', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', 'zo', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', 'zc', { noremap = true, silent = true })
