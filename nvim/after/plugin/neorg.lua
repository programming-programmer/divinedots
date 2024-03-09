require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {
            config = {
                icon_preset = "diamond",
                icons = {
                    todo = {
                        cancelled = {
                            icon = "_",
                        },
                        done = {
                            icon = "x",
                        },
                        on_hold = {
                            icon = "=",
                        },
                        pending = {
                            icon = "-",
                        },
                        recurring = {
                            icon = "+",
                        },
                        undone = {
                            icon = " ",
                        },
                        urgent = {
                            icon = "!",
                        },
                    },
                },
            },
        },
        ["core.ui"] = {},
        ["core.tempus"] = {},
        ["core.ui.calendar"] = {},
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
                neorg_leader = ",",
            },
        },
        ["core.completion"] = {
            config = {
                engine = "nvim-cmp",
                name = "[Norg]",
            },
        },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/norg-notes/",
                    projects = "~/Projects/",
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
