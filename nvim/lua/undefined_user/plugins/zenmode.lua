return {
    "folke/zen-mode.nvim",

    config = function()
        ---- GENERAL
        vim.keymap.set("n", "<leader>zu", function()
            require("zen-mode").toggle({
                window = {
                    backdrop = 1,
                    options = {
                        signcolumn = "no",
                        colorcolumn = "0",
                    },
                },

                ---@diagnostic disable-next-line: unused-local
                on_open = function(win)
                    require('fidget').progress.suppress(true)
                end,

                on_close = function()
                    require('fidget').progress.suppress(false)
                end
            })
        end)

        ---- WRITING
        vim.keymap.set("n", "<leader>ze", function()
            require("zen-mode").toggle({
                window = {
                    backdrop = 1,
                    options = {
                        signcolumn = "no",
                        colorcolumn = "0",
                        cursorline = false
                    },
                },

                plugins = {
                    options = {
                        enabled = true,
                        laststatus = 0,
                    },
                },

                ---@diagnostic disable-next-line: unused-local
                on_open = function(win)
                    require('fidget').progress.suppress(true)
                    vim.keymap.set("n", "j", "gj")
                    vim.keymap.set("n", "k", "gk")
                    vim.keymap.set("n", "gj", "j")
                    vim.keymap.set("n", "gk", "k")
                end,

                on_close = function()
                    require('fidget').progress.suppress(false)
                    vim.keymap.set("n", "j", "j")
                    vim.keymap.set("n", "k", "k")
                    vim.keymap.set("n", "gj", "gj")
                    vim.keymap.set("n", "gk", "gk")
                end,
            })
        end)
    end
}
