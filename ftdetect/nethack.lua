vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '.nethackrc', 'nethackrc' },
  callback = function() vim.bo.filetype = 'nethack' end,
})
