-- init.lua or your Neovim configuration file

local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

-- Define the LSP server setup
lspconfig.pyright.setup({
    capabilities = cmp_nvim_lsp.default_capabilities(),  -- Enable LSP capabilities for nvim-cmp
    on_attach = function(client, bufnr)
        -- Define key mappings or other settings for LSP
        -- Example: Set omnifunc for Python filetype
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    end,
    root_dir = function(fname)
        return lspconfig.util.path.dirname(fname)
    end,
})

