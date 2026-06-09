
vim.pack.add({ {
  src = 'https://github.com/stevearc/conform.nvim',
}})

require('conform').setup({
  formatters = {
    shfmt = {
      prepend_args = { '-i', '2', '-ci', '-sr' },
    },
  },
  formatters_by_ft = {
    sh = { 'shfmt' },
    bash = { 'shfmt' },
    zsh = { 'shfmt' },
  },
  format_on_save = function(bufnr)
    local enabled_fts = {
      bash = true,
      sh = true,
      zsh = true,
    }
    if enabled_fts[vim.bo[bufnr].filetype] then
      return {
        timeout_ms = 500,
        lsp_fallback = true,
      }
    end
  end,
})
