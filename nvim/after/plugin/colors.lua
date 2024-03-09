-- Default options:
require('midnight').setup ({
    HighlightGroup = {
        clear = true
    },
})

function ColorMyPencils(color) 
	color = color or "midnight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
