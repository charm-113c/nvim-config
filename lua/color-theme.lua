require("catppuccin").setup({
	flavour = "latte",
	transparent_background = true,
	highlight_overrides = {
			all = function(colors)
				return {
						-- https://github.com/catppuccin/nvim/blob/main/lua/catppuccin/groups/syntax.lua
						Comment = {fg = "#7B819D" },
						Type = { fg = colors.sky },

						-- LineNr = { fg = "#9CA0B0" },
						CursorLineNr = { fg = colors.peach },
						CursorLine = { bg = "#313244" }, 
					}
			end,
	},
	color_overrides = {
			latte = {
					mauve = "#FE640B",
					text = "#FFFFFF",
					maroon = "#89DCEB",
			},
	},
	no_italic = false,
	styles = {
			comments = {"italic"},
	},
	-- integrations = {
	-- 	cmp = true,
	-- 	dap = true,
	-- 	dap_ui = true,
	-- 	native_lsp = {
 --    			enabled = true,
 --    			virtual_text = {
 --        			errors = { "italic" },
 --        			hints = { "italic" },
 --        			warnings = { "italic" },
 --        			information = { "italic" },
 --        			ok = { "italic" },
 --    			},
 --    			underlines = {
 --        			errors = { "underline" },
 --        			hints = { "underline" },
 --        			warnings = { "underline" },
 --        			information = { "underline" },
 --        			ok = { "underline" },
 --    			},
 --    			inlay_hints = {
 --        			background = true,
 --    			},
	-- 	},
	-- 	telescope = { enabled = true, },
	-- 	treesitter = true, 
	-- 	nvimtree = true,
	-- }
})
