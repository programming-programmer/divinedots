-- If you want to find lsp bindings and auto-completion go to: ~/.config/nvim/lua/undefined_user/plugins/completion.lua
return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "j-hui/fidget.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
        local lspconfig = require('lspconfig')
        -- If you want the server auto-downloaded then add it to ensure_installed
        local servers = { 'jdtls', 'lua_ls', 'texlab' } -- You can always add more 🤗
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require('lspconfig.ui.windows').default_options.border = 'rounded'

        -- Fidget: for status on lsp and notification stuff
        require('fidget').setup({ notification = {window = { winblend = 0 }} })

        -- MASON
        require("mason").setup({ ui = { border = "rounded" } })
        require("mason-lspconfig").setup({
            ensure_installed = servers,
        })

        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup {
                capabilities = capabilities,
            }
        end

        vim.diagnostic.config({
            update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
