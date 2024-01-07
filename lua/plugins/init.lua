return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        priority = 1000,
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },
    'nvim-treesitter/playground',
    -- LSP Zero Start
    --- Uncomment these if you want to manage LSP servers from neovim
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    -- LSP Support
    'neovim/nvim-lspconfig',
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    -- LSP Zero End
    'neovim/nvim-lspconfig',
}
