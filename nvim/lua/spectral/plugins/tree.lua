return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")
		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		vim.g.nvim_tree_respect_buf_cwd = 1
		nvimtree.setup({
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			view = {
				width = 35,
				relativenumber = false,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				change_dir = { enable = false },
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}

-- return {
-- 	"stevearc/oil.nvim",
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
-- 		require("oil").setup({
-- 			columns = { "icon" },
-- 			keymaps = {
-- 				["<C-h>"] = false,
-- 				["<C-l>"] = false,
-- 				["<C-k>"] = false,
-- 				["<C-j>"] = false,
-- 				["<C-f>"] = {
-- 					"actions.select",
-- 					opts = { horizontal = true },
-- 					desc = "Open the entry in a horizontal split",
-- 				},
-- 			},
-- 			view_options = {
-- 				show_hidden = true,
-- 				natural_order = true,
-- 			},
-- 		})
--
-- 		-- Open parent directory in current window
-- 		vim.keymap.set("n", "<leader>ee", function()
-- 			vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil")
-- 		end)
--
-- 		-- Open parent directory in floating window
-- 		vim.keymap.set("n", "<leader>ef", require("oil").toggle_float)
-- 	end,
-- }
