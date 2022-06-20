local opt = vim.opt
local cmd = vim.cmd

opt.swapfile = false
opt.encoding = 'utf-8'

opt.mouse = 'a'
opt.scrolloff = 5
opt.cursorline = true

opt.number = true
opt.relativenumber = true
opt.colorcolumn = '79'

opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.expandtab = true

opt.termguicolors = true


cmd 'colorscheme ayu'


require 'bufferline'.setup {
    options = {
        close_icon = '1',
    }
}
require 'lualine'.setup {}
require 'nvim-tree'.setup {}

require 'lspconfig'.pyright.setup {}
local cmp = require 'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
        },
        {
            { name = 'buffer' },
        })
})
