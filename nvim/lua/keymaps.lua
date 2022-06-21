require 'funcs'
local map = vim.api.nvim_set_keymap

function set_maps(mode, opts, maps)
    for _, m in ipairs(maps) do
        map(mode, m[1], m[2], opts)
    end
end

set_maps(
    '',
    { noremap = true, silent = false },
    {
        {'q', '<C-Q>'},
        {'<F2>', '<C-r>'},
    }
)

set_maps(
    'n',
    { noremap = true, silent = true },
    {
        { '<leader>s', ':Save<cr>' },
        { '<leader>q', ':Exit<cr>' },
        { ',<space>', ':nohlsearch<cr>' },
        { '.<space>', ':ChangeColorcolumn<cr>' },
        { 'Y', 'VYdd' },
        { '<leader>b', ':NvimTreeToggle<cr>' },
        { '<leader>m', ':MarkdownPreview<cr>' },
        { 'gt', ':BufferLineCycleNext<cr>' },
        { 'gT', ':BufferLineCyclePrev<cr>' },
        { 'ff', ':Telescope find_files<cr>' },
    }
)

set_maps(
    'i',
    { noremap = true, silent = true },
    {
        { '<M-p>', '<C-p>' },
    }
)
