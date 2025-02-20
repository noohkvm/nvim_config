require("config.lazy")
vim.keymap.set('n', '<C-p>', function() require('telescope.builtin').git_files({ show_untracked = true }) end, { noremap = true, silent = true })
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", { noremap = true })
vim.keymap.set("n", "<C-f>", function() vim.lsp.buf.format() end, { noremap = true, silent = true })
vim.keymap.set("i", "<C-f>", function() vim.lsp.buf.format() end, { noremap = true, silent = true })
vim.wo.relativenumber = true
vim.wo.number = true
vim.o.signcolumn = "yes"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.fillchars = { eob = " " }

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { noremap = true, silent = true })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { noremap = true, silent = true })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true })

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if vim.fn.argc() == 0 then
            require("nvim-tree.api").tree.open()
        end
    end
})
