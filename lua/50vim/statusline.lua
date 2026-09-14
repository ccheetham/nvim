local statusline = require 'mini.statusline'

---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function() return '%2l:%-2v' end
statusline.setup { use_icons = vim.g.have_nerd_font }
