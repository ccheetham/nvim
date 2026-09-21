vim.pack.add { GitRepo 'folke/lazydev.nvim' }
require('lazydev').setup {
  ft = 'lua', -- only load on lua files
  opts = {
    library = {
      { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
    },
  },
}
