require('plugins')
require('file-explorer')
require('mason-config')
require('lsp.gopls')
require('lsp.json-yaml-lsp')
require('code-completion')
require('custom-keys')
require('debugging')
require('syntax-highlight')
require('file-finder')
require('fzf-telescope')
require('bottom-line')
require('color-theme')
require('teleport')
require('tabline')
require('code-outline')

vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.number = true
-- vim.api.nvim_exec("NvimTreeOpen", true)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.cmd [[
	colorscheme catppuccin
]]

-- Indent line colors
vim.cmd.highlight('IndentLine guifg=#7B819D')
-- Current indent line highlight
vim.cmd.highlight('IndentLineCurrent guifg=#FE640B')

-- Disable virtual_text since it's redundant due to lsp_lines
vim.diagnostic.config({
  virtual_text = false,
})
-- :lua vim.diagnostic.open_float()
-- The above command shows warning/error msgs in full when they're too long to see inline
