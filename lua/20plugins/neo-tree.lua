---@type (string|vim.pack.Spec)[]
local neotree_plugins = {
  { src = GitRepo 'nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  GitRepo 'nvim-lua/plenary.nvim',
  GitRepo 'MunifTanjim/nui.nvim',
}

vim.pack.add(neotree_plugins)
