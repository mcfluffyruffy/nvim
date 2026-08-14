vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "


vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20,o:hor50"
vim.api.nvim_set_hl(0, "Cursor", { bg = "#ff007c", fg = "#000000" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3a3a3a" })


-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>gh', ':nohlsearch<CR>')
vim.wo.number = true

