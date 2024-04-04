require("undefined_user.setup")
require("undefined_user.remap")
require("undefined_user.lazy")


-- LSP-specific Bindings
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<space>vrn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>vca', vim.lsp.buf.code_action, opts)
    end,
})
vim.keymap.set('n', '<space>k', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- VIM STYLE
vim.diagnostic.config({
    update_in_insert = true,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})
