return {
    "tpope/vim-fugitive",

    config = function()
        vim.keymap.set("n", "<leader>fg", vim.cmd.Git)

        vim.keymap.set("n", "<leader>p", vim.cmd.Git('push'))

        vim.keymap.set("n", "<leader>t", ":Git push -u origin ");

        vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
        vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
    end
}
