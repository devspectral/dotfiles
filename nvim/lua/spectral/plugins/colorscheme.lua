return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	-- Default options:
	config = function()
		require("gruvbox").setup({
			terminal_colors = true, -- add neovim terminal colors
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = true,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			inverse = true, -- invert background for search, diffs, statuslines and errors
			contrast = "hard", -- can be "hard", "soft" or empty string
			palette_overrides = { dark0_hard = "#181818" },
			overrides = { SignColumn = { bg = "#181818" }, DiffText = { bg = "#959648" } },
			dim_inactive = false,
			transparent_mode = false,
		})
		vim.cmd("colorscheme gruvbox")
	end,
}

-- return {
--     "rebelot/kanagawa.nvim",
--     priority = 1000,
--     config = function()
--         require("kanagawa").setup({
--             compile = false, -- enable compiling the colorscheme
--             undercurl = true, -- enable undercurls
--             commentStyle = { italic = true },
--             functionStyle = {},
--             keywordStyle = { italic = true },
--             statementStyle = { bold = true },
--             typeStyle = {},
--             transparent = false, -- do not set background color
--             dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--             terminalColors = true, -- define vim.g.terminal_color_{0,17}
--             colors = { -- add/modify theme and palette colors
--                 palette = {
--                     sumiInk3 = "#181818",
--                     sumiInk4 = "#181818",
--                 },
--                 theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--             },
--             -- overrides = function(colors) -- add/modify highlights
--                 -- 	return {}
--                 -- end,
--                 theme = "wave", -- Load "wave" theme when 'background' option is not set
--                 background = { -- map the value of 'background' option to a theme
--                     dark = "wave", -- try "dragon" !
--                     light = "lotus",
--                 },
--             })
--
--             -- setup must be called before loading
--             vim.cmd("colorscheme kanagawa-wave")
--         end,
--     }

-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "mocha",
-- 			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
-- 				comments = { "italic" }, -- Change the style of comments
-- 				conditionals = { "italic" },
-- 			},
-- 			default_integrations = true,
-- color_overrides = {
-- 				mocha = {
-- 					base = "#181818",
-- 					mantle = "#181818",
-- 					crust = "#181818",
-- 				},
-- 			},
-- 			integrations = {
-- 				cmp = true,
-- 				gitsigns = true,
-- 				nvimtree = true,
-- 				treesitter = true,
-- 			},
-- 		})
-- 		vim.cmd("colorscheme catppuccin")
-- 	end,
-- }

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
