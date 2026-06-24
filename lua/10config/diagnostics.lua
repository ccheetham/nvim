vim.diagnostic.config {
  virtual_text = not vim.g.diag_beneath_line,
  virtual_lines = vim.g.diag_beneath_line,
  signs = true,
  update_in_insert = false,
  severity_sort = true,
  underline = true,
}
