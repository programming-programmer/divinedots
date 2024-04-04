return {
    "lervag/vimtex",

    init = function()
        vim.g.vimtex_syntax_enabled = 0
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_mappings_prefix = ","
        vim.g.vimtex_fold_enabled = 1
    end
}
