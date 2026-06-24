vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.signcolumn = 'yes'
vim.opt.scrolloff = 3

vim.opt.showmode = not vim.g.have_nerd_font

vim.opt.confirm = true
vim.opt.winborder = 'rounded'
vim.opt.inccommand = 'split'
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.breakindent = true

vim.opt.list = true
vim.opt.listchars = { extends = '>', nbsp = '␣', precedes = '<', tab = '» ', trail = '·' }

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = 'a'

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.undofile = true

vim.schedule(function() vim.opt.clipboard = 'unnamed,unnamedplus' end)
