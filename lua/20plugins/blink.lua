vim.pack.add { { src = GitRepo 'saghen/blink.cmp', version = vim.version.range '1.*' } }

require('blink.cmp').setup {
  fuzzy = {
    prebuilt_binaries = {
      download = true,
    },
  },
}
