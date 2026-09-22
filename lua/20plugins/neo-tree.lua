---@type (string|vim.pack.Spec)[]
local plugins = {
  { src = GitRepo 'nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  GitRepo 'nvim-lua/plenary.nvim',
  GitRepo 'MunifTanjim/nui.nvim',
}
vim.pack.add(plugins)
