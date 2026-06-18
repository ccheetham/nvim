vim.lsp.config('clangd', {
  cmd = { 'clangd', '--background-index', '--clang-tidy', '--completion-style=detailed' },
})
vim.lsp.enable 'clangd'
