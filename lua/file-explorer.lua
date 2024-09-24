-- Setup for nvimtree
-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable optional 24 bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup({
	view = {
		side = "right",
		relativenumber = true,
	},
	filters = {
		git_ignored = false,
	},
})
