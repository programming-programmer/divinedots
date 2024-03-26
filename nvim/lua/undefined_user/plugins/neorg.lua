return {
    "nvim-neorg/neorg",

    run = ":Neorg sync-parsers",

    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {},
                ["core.ui"] = {},
                ["core.concealer"] = {
                    config = {
                        icon_preset = "diamond",
                    },
                },
                ["core.keybinds"] = {
                    config = {
                        default_keybinds = true,
                        neorg_leader = ",",
                    },
                },
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/notes/",
                        },
                        default_workspace = "notes",
                    },
                },
            },
        }

        vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
            pattern = {"*.norg"},
            command = "set conceallevel=3"
        })
    end
}
