-- init.lua or your Neovim configuration file
local lspconfig = require('lspconfig')
local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            -- For snippet support (requires vsnip or other snippet engines)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-Space>'] = cmp.mapping.complete(),  -- Trigger completion
        ['<C-q>'] = cmp.mapping.abort(),  -- Close completion menu
        ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirm completion
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
    },
    formatting = {
        format = function(entry, item)
            item.menu = ({
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                path = "[Path]",
            })[entry.source.name]
            return item
        end,
    },
})

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
