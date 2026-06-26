---@type (string|vim.pack.Spec)[]
local debug_plugins = {
  GitRepo 'mfussenegger/nvim-dap',
  GitRepo 'nvim-neotest/nvim-nio',
  GitRepo 'rcarriga/nvim-dap-ui',
  GitRepo 'theHamsta/nvim-dap-virtual-text',
}

vim.pack.add(debug_plugins)
