---@type (string|vim.pack.Spec)[]
local plugins = {
  GitRepo 'nvim-lua/plenary.nvim',
  GitRepo 'nvim-telescope/telescope.nvim',
  GitRepo 'nvim-telescope/telescope-ui-select.nvim',
  GitRepo 'nvim-telescope/telescope-fzf-native.nvim',
}
vim.pack.add(plugins)

require('telescope').setup {
  extensions = {
    ['ui-select'] = { require('telescope.themes').get_dropdown() },
  },
}

pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')
