local wk = require 'which-key'

wk.add {
  {
    't',
    ':Teleport forwards<cr>',
    desc = 'Teleport forward',
    mode = { 'n' },
  },
  {
    'T',
    ':Teleport backwards<cr>',
    desc = 'Teleport backward',
    mode = { 'n' },
  },
  {
    'qq',
    ':TeleportExit<cr>',
    desc = 'Teleport quit',
    mode = { 'n' },
  },
}
