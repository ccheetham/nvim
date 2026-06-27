local wk = require 'which-key'

wk.add {
  {
    '<c-/>',
    'gcc<down>',
    desc = 'Toggle comment',
    mode = { 'n' },
    remap = true,
  },
  {
    '<c-/>',
    'gc',
    desc = 'Toggle comment',
    mode = { 'v' },
    remap = true,
  },
}
