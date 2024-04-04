return {
    "jiaoshijie/undotree",

    requires = "nvim-lua/plenary.nvim",

    keys = { { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" } },

    config = function ()
        require('undotree').setup({
            window = { winblend = 0 }
        })
    end,
}
