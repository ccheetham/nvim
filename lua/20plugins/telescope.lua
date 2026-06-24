---@type (string|vim.pack.Spec)[]
local telescope_plugins = {
  GitRepo 'nvim-lua/plenary.nvim',
  GitRepo 'nvim-telescope/telescope.nvim',
  GitRepo 'nvim-telescope/telescope-ui-select.nvim',
}

if vim.fn.executable 'make' == 1 then table.insert(telescope_plugins, GitRepo 'nvim-telescope/telescope-fzf-native.nvim') end

vim.pack.add(telescope_plugins)

require('telescope').setup {
  extensions = {
    ['ui-select'] = { require('telescope.themes').get_dropdown() },
  },
}

pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')
