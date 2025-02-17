require("config.lazy")
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", { noremap = true })
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", { noremap = true })
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.fillchars = { eob = " " }
