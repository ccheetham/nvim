-- We first install it from https://github.com/NMAC427/guess-indent.nvim
-- and then call its `setup()` function to start it with default settings.
vim.pack.add { GitRepo 'NMAC427/guess-indent.nvim' }
require('guess-indent').setup {}

