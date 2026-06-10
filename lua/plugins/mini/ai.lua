-- from:
--   https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua#L407C2-L420C4

-- Better Around/Inside textobjects
--
-- Examples:
--  - va)  - [V]isually select [A]round [)]paren
--  - yiiq - [Y]ank [I]nside [I]+1 [Q]uote
--  - ci'  - [C]hange [I]nside [']quote

require('mini.ai').setup {
  mappings = {
    around_next = 'aa',
    inside_next = 'ii'
  },
  n_lines = 500
}
