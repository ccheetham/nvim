local wk = require 'which-key'

wk.add {
  {
    '<leader>q',
    '<cmd>quitall<cr>',
    desc = '[Q]uit Neovim',
    mode = { 'n' },
  },
  {
    '<leader>Q',
    '<cmd>quit!<cr>',
    desc = 'Really [Q]uit Neovim',
    mode = { 'n' },
  },
}
