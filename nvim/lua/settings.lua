local opt = vim.opt
local cmd = vim.cmd


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
