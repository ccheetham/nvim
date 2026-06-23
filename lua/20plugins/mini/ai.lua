vim.pack.add { GitRepo 'nvim-mini/mini.nvim' }
require('mini.ai').setup {
  mappings = {
    around_next = 'aa',
    inside_next = 'ii',
  },
  n_lines = 500,
}
