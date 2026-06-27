local wk = require 'which-key'
local dap = require 'dap'

wk.add {
  {
    '<leader>b',
    group = 'De[B]ugger',
  },
  {
    '<leader>bb',
    function() dap.toggle_breakpoint() end,
    desc = 'Debug: Toggle [B]reakpoint',
    mode = { 'n' },
  },
  {
    '<leader>bc',
    function() dap.continue() end,
    desc = 'Debug: Start/[C]ontinue',
    mode = { 'n' },
  },
  {
    '<leader>be',
    function() dap.set_breakpoint(vim.fn.input 'Breakpoint condition expression') end,
    desc = 'Debug: Set Breakpoint Condition [E]xpression',
    mode = { 'n' },
  },
  {
    '<leader>bi',
    function() dap.step_over() end,
    desc = 'Debug: Step [I]n',
    mode = { 'n' },
  },
  {
    '<leader>bo',
    function() dap.step_out() end,
    desc = 'Debug: Step [O]ut',
    mode = { 'n' },
  },
  {
    '<leader>bs',
    function() dap.step_into() end,
    desc = 'Debug: [S]tep Over',
    mode = { 'n' },
  },
}
