return {

    -- blink.cmp
    { import = "nvchad.blink.lazyspec" },

    -- Disable telescope
    -- { "nvim-telescope/telescope.nvim", enabled = false },

    -- Fzf integratiion into telescope
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        lazy = false,
    },

    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- LSP repositories for Mason
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    -- Undo history
    { "mbbill/undotree", lazy = false, },
}
