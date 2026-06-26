local dap = require 'dap'
local dapui = require 'dapui'

dap.set_log_level 'INFO'

dap.listeners.after.event_initialized['dapui_config'] = dapui.open
dap.listeners.before.event_terminated['dapui_config'] = dapui.close
dap.listeners.before.event_exited['dapui_config'] = dapui.close

vim.api.nvim_set_hl(0, 'log', { fg = '#61afef' })
vim.api.nvim_set_hl(0, 'stopped', { fg = '#ffcc00' })
vim.api.nvim_set_hl(0, 'breakpoint', { fg = '#e51400' })
vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'breakpoint', numhl = 'breakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text = '', texthl = 'breakpoint', numhl = 'breakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text = '', texthl = 'breakpoint', numhl = 'breakpoint' })
vim.fn.sign_define('DapLogPoint', { text = '', texthl = 'log', numhl = 'log' })
vim.fn.sign_define('DapStopped', { text = '', texthl = 'stopped', numhl = 'stopped' })

---@diagnostic disable-next-line: missing-fields
dapui.setup {
  icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
  ---@diagnostic disable-next-line: missing-fields
  controls = {
    icons = {
      pause = '⏸',
      play = '▶',
      step_into = '⏎',
      step_over = '⏭',
      step_out = '⏮',
      step_back = 'b',
      run_last = '▶▶',
      terminate = '⏹',
      disconnect = '⏏',
    },
  },
}
