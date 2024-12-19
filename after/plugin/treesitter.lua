require'nvim-treesitter.configs'.setup {
  ensure_installed = { "asm", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "typescript", "python", "bash", "cpp", "dockerfile", "go", "haskell", "html", "java", "json", "lua", "markdown", "markdown_inline", "pascal", "php", "rust", "sql", "vim" },

  sync_install = false,

  auto_install = true,



  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
  fold = {
    enable = false
  }
}

