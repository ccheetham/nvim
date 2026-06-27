require('mason-tool-installer').setup {
  ensure_installed = {
    'codelldb',
    'lua-language-server',
    'selene',
    'shfmt',
    'stylua',
  },
  auto_update = true,
  run_on_start = true,
}
