vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
local wk = require 'which-key'

wk.add {
  {
    '<leader>vc',
    '<cmd>Neogit<cr>',
    desc = 'Neogit [V]ersion [C]ontrol',
    mode = { 'n' },
  },
}
