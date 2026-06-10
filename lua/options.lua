vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.signcolumn = 'yes'

vim.o.showmode = not vim.g.have_nerd_font

vim.opt.confirm = true
vim.opt.winborder = 'rounded'
vim.opt.inccommand = 'split'

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.breakindent = true

vim.opt.list = true
vim.opt.listchars = { extends = '>', nbsp = '␣', precedes = '<', tab = '» ', trail = '·' }

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undofile = true

vim.schedule(function ()
  vim.o.clipboard = 'unnamedplus'
end)

vim.opt.updatetime = 250
vim.opt.timeoutlen = 600
