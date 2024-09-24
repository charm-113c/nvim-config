require("outline").setup({
	outline_window = {
		show_numbers = true,
		show_relative_numbers = true,
		show_cursor_line = 'focus_in_outline',
	},
	preview_window = {
		auto_preview = true,
	},
	symbol_folding = {
		auto_unfold = {
			hovered = false,
		},
	},
})

-- Toggle Outline
vim.keymap.set("n", "<leader>a", "<cmd>Outline<CR>")
