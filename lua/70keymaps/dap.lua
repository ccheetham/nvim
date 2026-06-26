local dap = require 'dap'

vim.keymap.set('n', '<leader>bc', function() dap.continue() end, { desc = 'Debug: Start/Continue' })
vim.keymap.set('n', '<leader>bs', function() dap.step_into() end, { desc = 'Debug: Step Over' })
vim.keymap.set('n', '<leader>bi', function() dap.step_over() end, { desc = 'Debug: Step In' })
vim.keymap.set('n', '<leader>bo', function() dap.step_out() end, { desc = 'Debug: Step Out' })
vim.keymap.set('n', '<leader>bb', function() dap.toggle_breakpoint() end, { desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<leader>be', function() dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ') end, { desc = 'Debug: Set Breakpoint' })
