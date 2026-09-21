vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
local wk = require 'which-key'

vim.api.nvim_create_autocmd('User', {
  pattern = 'NeogitFetchComplete',
  callback = function() require('neogit').dispatch_refresh() end,
})

wk.add {
  {
    '<leader>gg',
    function() require('neogit').open() end,
    desc = 'Neogit Git General',
    mode = { 'n' },
  },
  {
    '<leader>gf',
    desc = 'Neogit Git Fetch',
    function() require('neogit').open { 'fetch' } end,
    mode = { 'n' },
  },
  {
    '<leader>gp',
    function() require('neogit').open { 'pull' } end,
    desc = 'Neogit Git Pull',
    mode = { 'n' },
  },
  {
    '<leader>gP',
    function() require('neogit').open { 'push' } end,
    desc = 'Neogit Git Push',
    mode = { 'n' },
  },
  {
    '<leader>gr',
    function() require('neogit').open { 'rebase' } end,
    desc = 'Neogit Git Rebase',
    mode = { 'n' },
  },
}
