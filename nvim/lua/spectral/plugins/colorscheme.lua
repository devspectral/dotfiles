-- return {
-- 	"olimorris/onedarkpro.nvim",
-- 	priority = 1000, -- Ensure it loads first
-- 	config = function()
-- 		require("onedarkpro").setup({
-- 			colors = {
-- 				dark = { bg = "#181818" },
-- 			},
-- 		})
-- 		vim.cmd("colorscheme onedark")
-- 	end,
-- }

return {
	"AlexvZyl/nordic.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nordic").setup({
			on_palette = function(palette)
				palette.black1 = "#181818"
                palette.blue2 = "#BBC3D4"
                palette.black0 = "#3B4252"
			end,
			-- Enable italic comments.
			italic_comments = true,
			-- Reduce the overall amount of blue in the theme (diverges from base Nord).
			reduced_blue = true,
			-- Swap the dark background with the normal one.
			swap_backgrounds = true,
			-- Cursorline options.  Also includes visual/selection.
			cursorline = {
				-- Bold font in cursorline.
				bold = false,
				-- Bold cursorline number.
				bold_number = true,
				-- Available styles: 'dark', 'light'.
				theme = "dark",
				-- Blending the cursorline bg with the buffer bg.
				blend = 0.85,
			},
			noice = {
				-- Available styles: `classic`, `flat`.
				style = "classic",
			},
			telescope = {
				-- Available styles: `classic`, `flat`.
				style = "flat",
			},
			leap = {
				-- Dims the backdrop when using leap.
				dim_backdrop = false,
			},
			ts_context = {
				-- Enables dark background for treesitter-context window
				dark_background = true,
			},
		})
		vim.cmd("colorscheme nordic")
	end,
}

--[[ return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = false, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {
                    sumiInk3 = "#181818",
                    sumiInk4 = "#181818",
                },
				theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
			},
			-- overrides = function(colors) -- add/modify highlights
			-- 	return {}
			-- end,
			theme = "wave", -- Load "wave" theme when 'background' option is not set
			background = { -- map the value of 'background' option to a theme
				dark = "wave", -- try "dragon" !
				light = "lotus",
			},

		})

		-- setup must be called before loading
		vim.cmd("colorscheme kanagawa-wave")
	end,
} ]]
