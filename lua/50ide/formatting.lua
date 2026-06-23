require('conform').setup {
  notify_on_error = false,
  formatters = {},
  formatters_by_ft = {},
  default_format_opts = {
    lsp_format = 'fallback',
  },
  format_on_save = function(bufnr)
    local enabled_filetypes = {
      c = true,
      cpp = true,
      lua = true,
    }
    if enabled_filetypes[vim.bo[bufnr].filetype] then
      return { timeout_ms = 500 }
    else
      return nil
    end
  end,
}

vim.keymap.set({ 'n', 'v' }, '<leader>f', function() require('conform').format { async = true } end, { desc = '[F]ormat buffer' })
