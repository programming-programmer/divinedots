function ColorMyPencils(color)
    color = color or "midnight"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

-- TODO: Discover why bold isn't working
function LineNumberColors()
    vim.api.nvim_set_hl(0, 'CursorLineNR', { ctermbg=lightgray })
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='gray' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='gray' })
end


return {
    {
        "dasupradyumna/midnight.nvim",
        config = function()
            vim.cmd("colorscheme midnight")
            ColorMyPencils()
            LineNumberColors()
        end
    },

    -- Light Theme
    {
        "yorickpeterse/vim-paper",
        config = function()
            vim.g.airline_theme = 'paper'
            vim.cmd("colorscheme paper")
            ColorMyPencils()
            LineNumberColors()
        end
    },
}
