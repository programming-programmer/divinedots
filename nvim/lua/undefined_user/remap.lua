-- WHERE"S THE MAP!@@!@#>>? HERE IT IS!!!! SIKE YOU THOUGHT!!
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>ad", vim.cmd.Ex)

-- Yall got me FUNKED up if you think I'm reachin my teenie pinkie for that teeny escape key
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Sweet mother of magaldene, this brings a tear to my eye (also a pain in my back)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- NO deisiointing movemnet
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- CLIP DAT THING MRS! DJFKSFLJDSYAY@@
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- greatest remap ever
-- This is to send whatever you're doing to THE VOID!!
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- WOOW REPLACE it must be heaven :)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>tn", function()
    vim.cmd("set number")
    vim.cmd("set relativenumber")
    -- ILOVECOLORS!!!
    LineNumberColors()
end)
