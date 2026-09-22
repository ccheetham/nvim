local wk = require 'which-key'

wk.add {
  {
    '<esc>',
    ':Noice dismiss<cr>',
    desc = 'Dismiss Noice messages',
    mode = { 'n' },
  },
}
