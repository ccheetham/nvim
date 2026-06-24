vim.pack.add {
  GitRepo 'NeogitOrg/neogit',
  GitRepo 'sindrets/diffview.nvim',
  GitRepo 'nvim-telescope/telescope.nvim',
}

local neogit = require 'neogit'
neogit.setup {}
