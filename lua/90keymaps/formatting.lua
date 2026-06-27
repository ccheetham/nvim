vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
local wk = require 'which-key'

wk.add {
  {
    '<leader>f',
    function() require('conform').format { async = true } end,
    desc = '[F]ormat buffer',
    mode = { 'n', 'v' },
  },
}
