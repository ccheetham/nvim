vim.lsp.config('clangd', {
  cmd = { 'clangd', '--background-index', '--clang-tidy', '--completion-style=detailed' },
})
vim.lsp.enable 'clangd'

require('dap').configurations.c = {
  {
    name = 'Launch debugger',
    type = 'lldb',
    request = 'launch',
    cwd = '${workspaceFolder}',
    program = function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end,
    stopOnEntry = false,
  },
}
