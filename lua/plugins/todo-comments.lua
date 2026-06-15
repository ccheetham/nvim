
-- Highlight todo, notes, etc in comments
--
vim.pack.add { GitRepo 'folke/todo-comments.nvim' }
require('todo-comments').setup { signs = false }
