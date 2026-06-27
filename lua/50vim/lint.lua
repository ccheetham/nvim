local lint = require 'lint'
lint.linters_by_ft = {
  lua = { 'selene' },
  markdown = { 'markdownlint' },
}

--   dockerfile = { "hadolint" },
--   inko = { "inko" },
--   json = { "jsonlint" },
--   markdown = { "vale" },
--   rst = { "vale" },
--   ruby = { "ruby" },
--   text = { "vale" }

local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
  group = lint_augroup,
  callback = function()
    if vim.bo.modifiable then lint.try_lint() end
  end,
})
