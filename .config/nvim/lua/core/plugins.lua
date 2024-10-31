return {

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { 'nvim-treesitter/nvim-treesitter',        build = ':TSUpdate' },
    { 'theprimeagen/harpoon' }, 
    { 'theprimeagen/refactoring.nvim' },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    { 'nvim-treesitter/nvim-treesitter-context' },
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    {
        'L3MON4D3/LuaSnip',
        lazy = false,
        dependencies = { 'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets' },
        version = "v2.*",
        build = "make install_jsregexp",
        init = function()
            require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })
        end,

    },
    --colorschemes	
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { 'rebelot/kanagawa.nvim' },

    {
        'rcarriga/nvim-dap-ui',
        dependencies = { 'mfussenegger/nvim-dap' }
    },
    { 'github/copilot.vim' },
    { 'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
}
