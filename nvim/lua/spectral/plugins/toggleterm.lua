return {
	{
		"akinsho/toggleterm.nvim",
		config = true,
		cmd = "ToggleTerm",
		build = ":ToggleTerm",
		keys = { { "<C-`>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
		opts = {
			open_mapping = [[<C-`>]],
			direction = "vertical",
			shade_filetypes = {},
			hide_numbers = true,
			insert_mappings = true,
			terminal_mappings = true,
			start_in_insert = true,
			close_on_exit = true,
			size = 60,
        }
	},
}
