vim.pack.add { GitRepo 'folke/tokyonight.nvim' }

---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
	styles = {
		comments = { italic = false }, -- Disable italics in comments
	},
}
vim.cmd.colorscheme 'tokyonight-night'
