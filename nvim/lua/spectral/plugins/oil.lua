return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			columns = { "icon" },
			keymaps = {
				["<C-h>"] = false,
				["<C-l>"] = false,
				["<C-k>"] = false,
				["<C-j>"] = false,
				["<C-f>"] = {
					"actions.select",
					opts = { horizontal = true },
					desc = "Open the entry in a horizontal split",
				},
			},
			view_options = {
				show_hidden = true,
				natural_order = true,
			},
		})

		-- Open parent directory in current window
		vim.keymap.set("n", "<leader>ee", function()
			vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil")
		end)

		-- Open parent directory in floating window
		vim.keymap.set("n", "<leader>ef", require("oil").toggle_float)
	end,
}
