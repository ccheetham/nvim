vim.pack.add {
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/jay-babu/mason-nvim-dap.nvim',
  'https://github.com/leoluz/nvim-dap-go',
}

local dap = require 'dap'
local dapui = require 'dapui'

require('mason-nvim-dap').setup {
  automatic_installation = true,
  handlers = {},
  ensure_installed = {
    'delve',
  },
}

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

-- Change breakpoint icons
-- vim.api.nvim_set_hl(0, 'DapBreak', { fg = '#e51400' })
-- vim.api.nvim_set_hl(0, 'DapStop', { fg = '#ffcc00' })
-- local breakpoint_icons = vim.g.have_nerd_font
--     and { Breakpoint = '', BreakpointCondition = '', BreakpointRejected = '', LogPoint = '', Stopped = '' }
--   or { Breakpoint = '●', BreakpointCondition = '⊜', BreakpointRejected = '⊘', LogPoint = '◆', Stopped = '⭔' }
-- for type, icon in pairs(breakpoint_icons) do
--   local tp = 'Dap' .. type
--   local hl = (type == 'Stopped') and 'DapStop' or 'DapBreak'
--   vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
-- end

dap.listeners.after.event_initialized['dapui_config'] = dapui.open
dap.listeners.before.event_terminated['dapui_config'] = dapui.close
dap.listeners.before.event_exited['dapui_config'] = dapui.close
