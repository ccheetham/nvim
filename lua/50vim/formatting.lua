require('conform').setup {
  notify_on_error = true,
  formatters = {
    adocfmt = {
      command = 'adocfmt',
      args = {},
      stdin = true,
    },
    shfmt = {
      prepend_args = { '-i', '2', '-ci', '-sr' },
    },
  },
  formatters_by_ft = {
    asciidoc = { 'adocfmt' },
    c = { 'clang-format' },
    cpp = { 'clang-format' },
    lua = { 'stylua' },
    markdown = { 'prettier' },
    sh = { 'shfmt' },
    bash = { 'shfmt' },
    zsh = { 'shfmt' },
  },
  default_format_opts = {
    lsp_format = 'fallback',
  },
  format_on_save = function(bufnr)
    local enabled_filetypes = {
      asciidoc = true,
      bash = true,
      c = true,
      cpp = true,
      lua = true,
      markdown = true,
      sh = true,
      zsh = true,
    }
    if enabled_filetypes[vim.bo[bufnr].filetype] then
      return { timeout_ms = 500 }
    else
      return nil
    end
  end,
}
