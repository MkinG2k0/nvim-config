return {                                       -- Git related plugins
    'tpope/vim-fugitive', 'tpope/vim-rhubarb', -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',                        --  The configuration is done below. Search for lspconfig to find it below.
    {
        -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        dependencies = { -- Automatically install LSPs to stdpath for neovim
            {
                'williamboman/mason.nvim',
                config = true
            }, 'williamboman/mason-lspconfig.nvim', -- Useful status updates for LSP
            {
                'j-hui/fidget.nvim',
                tag = 'legacy',
                opts = {}
            }, -- Additional lua configuration, makes nvim stuff amazing!
            'folke/neodev.nvim' }
    }, {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {                                    -- Snippet Engine & its associated nvim-cmp source
        'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip', -- Adds LSP completion capabilities
        'hrsh7th/cmp-nvim-lsp',                         -- Adds a number of user-friendly snippets
        'rafamadriz/friendly-snippets' }
},                                                      -- Useful plugin to show you pending keybinds.
    {
        'folke/which-key.nvim',
        opts = {}
    }, {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    opts = {
        char = '┊',
        show_trailing_blankline_indent = false
    }
}, -- "gc" to comment visual regions/lines
    {
        'numToStr/Comment.nvim',
        opts = {}
    },


    {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
        build = ':TSUpdate'
    },
    -- Tabs
    { 'akinsho/bufferline.nvim',        version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
    { 'tpope/vim-surround' },
    { 'lukas-reineke/lsp-format.nvim' },
    { 'jose-elias-alvarez/null-ls.nvim' },
    { 'nvim-lua/plenary.nvim' },
    { 'neovim/nvim-lspconfig' }


}
