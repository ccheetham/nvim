vim.diagnostic.config {
  virtual_text = not vim.g.diag_beneath_line,
  virtual_lines = vim.g.diag_beneath_line,
  signs = true,
  update_in_insert = false,
  severity_sort = true,
  underline = true,
}

vim.api.nvim_create_autocmd('CursorHold', {
  buffer = bufnr, ---@diagnostic disable-line: undefined-global
  callback = function()
    local opts = {
      focusable = false,
      close_events = { 'BufLeave', 'CursorMoved', 'InsertEnter', 'FocusLost' },
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})
