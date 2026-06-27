local wk = require 'which-key'

wk.add {
  {
    '<c-h>',
    '<c-w><c-h>',
    desc = 'Move window focus left',
    mode = { 'n' },
  },
  {
    '<c-j>',
    '<c-w><c-j>',
    desc = 'Move window focus down',
    mode = { 'n' },
  },
  {
    '<c-k>',
    '<c-w><c-k>',
    desc = 'Move window focus up',
    mode = { 'n' },
  },
  {
    '<c-l>',
    '<c-w><c-l>',
    desc = 'Move window focus right',
    mode = { 'n' },
  },
}
