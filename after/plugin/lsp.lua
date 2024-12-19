-- init.lua or your Neovim configuration file

local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

-- Define the LSP server setup
-- local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero') 

local lsp_attach = function(client, bufnr)
  local opts = {buffer = bufnr}

  vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
end

-- lsp_zero.extend_lspconfig({
--   sign_text = true,
--   lsp_attach = lsp_attach,
--   capabilities = require('cmp_nvim_lsp').default_capabilities(),
-- })



-- Define the LSP server setup
require('lspconfig').pyright.setup({
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

require('lspconfig').clangd.setup{}
require('lspconfig').rust_analyzer.setup({
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


local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'lua_ls', 'rust_analyzer', "pyright"},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})
