require("Solomon")
print("WELCOME TO NEOVIM")

-- require'lspconfig'.pyright.setup{}


-- Load line numbering configuration
require('Solomon.init')

local on_attach = function(client, bufnr)
    local opts = { noremap=true, silent=true }

    -- "Go to Definition" mapping
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

    -- "Hover" mapping to show info about the symbol under the cursor
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

    -- "Signature Help" mapping (shows function signature when typing)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

    -- Other LSP-related mappings can go here...
end

-- Other configurations and plugin setups
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').pyright.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}

require('lspconfig').clangd.setup{
	capabilities = capabilities,
}
