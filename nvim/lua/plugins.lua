vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- THEMES
    use 'morhetz/gruvbox'
    use 'ayu-theme/ayu-vim'
    use 'kaicataldo/material.vim'
    use 'mhartington/oceanic-next'

    -- BRACKETS CLOSERS
    use 'cohama/lexima.vim'

    -- BEAUTIFUL PLUGINS
    use { 'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
    }
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons',
        },
        tag = 'nightly',
    }

    -- LSP SERVER
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-path'

    -- FINDERS
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- VIEWERS
    use ({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use ({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    -- MOVEMENT AND VIM INTERACTION
    use 'joeytwiddle/sexy_scroller.vim'
    use 'yuttie/comfortable-motion.vim'
    use 'powerman/vim-plugin-ruscmd'
end)
