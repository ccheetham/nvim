---@type (string|vim.pack.Spec)[]
local noice_plugins = {
  GitRepo 'folke/noice.nvim',
  GitRepo 'folke/snacks.nvim',
}

vim.pack.add(noice_plugins)
require('noice').setup()
