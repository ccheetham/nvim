vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
local wk = require 'which-key'

wk.add {
  {
    '<leader>x',
    vim.diagnostic.setloclist,
    desc = 'Open diagnosti[X] quickfix list',
    mode = { 'n' },
  },
}
