local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.keymap.set({ "i", "x", "n", "s" }, "<c-s>", "<cmd>update<cr><esc>", { desc = "save file" })
vim.o.swapfile = false

require("vim-options")
require("lazy").setup("plugins")
