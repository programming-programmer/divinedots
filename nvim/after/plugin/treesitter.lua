require('nvim-treesitter.configs').setup {
    -- build = ":TSUpdate",
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "java", "c", "lua", "norg", "org"},
    -- -- Install parsers synchronously (only applied to `ensure_installed`)
    -- sync_install = false,
    -- config = function(_, opts)
    --     require("nvim-treesitter.configs").setup(opts)
    -- end,
    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    -- auto_install = false,
    additional_vim_regex_highlighting = {'org'},
    highlight = { enable = true },
}
