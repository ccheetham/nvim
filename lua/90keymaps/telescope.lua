local wk = require 'which-key'
local builtin = require 'telescope.builtin'

wk.add {
  {
    '<leader>s',
    group = '[S]earch',
    mode = { 'n', 'v' },
  },
  {
    '<leader>sc',
    builtin.commands,
    desc = '[S]earch [C]ommands',
    mode = { 'n' },
  },
  {
    '<leader>sd',
    builtin.diagnostics,
    desc = '[S]earch [D]iagnostics',
    mode = { 'n' },
  },
  {
    '<leader>sf',
    builtin.find_files,
    desc = '[S]earch [F]iles',
    mode = { 'n' },
  },
  {
    '<leader>sg',
    builtin.live_grep,
    desc = '[S]earch [G]rep',
    mode = { 'n' },
  },
  {
    '<leader>sh',
    builtin.help_tags,
    desc = '[S]earch [H]elp',
    mode = { 'n' },
  },
  {
    '<leader>sk',
    builtin.keymaps,
    desc = '[S]earch [K]eymaps',
    mode = { 'n' },
  },
  {
    '<leader>sn',
    function() builtin.find_files { cwd = vim.fn.stdpath 'config', follow = true } end,
    desc = '[S]earch [N]eovim files',
    mode = { 'n' },
  },
  {
    '<leader>sr',
    builtin.resume,
    desc = '[S]earch [R]esume',
    mode = { 'n' },
  },
  {
    '<leader>ss',
    builtin.builtin,
    desc = '[S]earch [S]elect Telescope',
    mode = { 'n' },
  },
  {
    '<leader>sw',
    builtin.grep_string,
    desc = '[S]earch [W]ord',
    mode = { 'n', 'v' },
  },
  {
    '<leader>s.',
    builtin.oldfiles,
    desc = '[S]earch Recent ("." for repeat)',
    mode = { 'n' },
  },
  {
    '<leader><leader>',
    builtin.buffers,
    desc = '[ ] Find existing buffers',
    mode = { 'n' },
  },
}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
  callback = function(event)
    local buf = event.buf

    wk.add {
      {
        'grr',
        builtin.lsp_references,
        buffer = buf,
        desc = '[G]oto [R]eferences',
        mode = { 'n' },
      },
      {
        'gri',
        builtin.lsp_references,
        buffer = buf,
        desc = '[G]oto [I]mplementation',
        mode = { 'n' },
      },
      {
        'gri',
        builtin.lsp_definitions,
        buffer = buf,
        desc = '[G]oto [D]efinition',
        mode = { 'n' },
      },
      {
        'grt',
        builtin.lsp_type_definitions,
        buffer = buf,
        desc = '[G]oto [T]ype Definition',
        mode = { 'n' },
      },
      {
        'gD',
        builtin.lsp_document_symbols,
        buffer = buf,
        desc = 'Open [D]ocument symbols',
        mode = { 'n' },
      },
      {
        'gW',
        builtin.lsp_dynamic_workspace_symbols,
        buffer = buf,
        desc = 'Open [W]orkspace symbols',
        mode = { 'n' },
      },
    }
  end,
})

vim.keymap.set(
  'n',
  '<leader>/',
  function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end,
  { desc = '[/] Fuzzily search in current buffer' }
)

vim.keymap.set(
  'n',
  '<leader>s/',
  function()
    builtin.live_grep {
      grep_open_files = true,
      prompt_title = 'Live Grep in Open Files',
    }
  end,
  { desc = '[S]earch [/] in Open Files' }
)
