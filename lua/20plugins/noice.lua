-- to disable, run:
--    nvim --cmd "let g:enable_noice = v:false"
if vim.g.enable_noice then
  local plugins = {
    ---@type (string|vim.pack.Spec)[]
    GitRepo 'folke/noice.nvim',
    GitRepo 'folke/snacks.nvim',
    GitRepo 'MunifTanjim/nui.nvim',
    GitRepo 'rcarriga/nvim-notify',
  }
  vim.pack.add(plugins)
  require('noice').setup()
end
