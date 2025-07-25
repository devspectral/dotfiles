return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
		},
	},
	-- config = function()
	-- 	require("bufferline").setup({
	-- 		options = {
	--			mode = "tabs",
	-- 			numbers = "none",
	--			close_command = "Bdelete! %d",
    --		right_mouse_command = "Bdelete! %d",
	--			left_mouse_command = "buffer %d",
	--			middle_mouse_command = nil,
	--			indicator = {
	--				style = "icon",
    --			icon = "", --'▎',
	--				buffer_close_icon = " ",
	--				modified_icon = "●",
	--				close_icon = " ",
	--				left_trunc_marker = "<-", --'',
	--				right_trunc_marker = "->", --'',
	--			},
	--			offsets = { { filetype = "NvimTree", text = "persist...", --[[ text_align = "left" --]] } },
	-- 			color_icons = true,
	-- 			show_buffer_icons = true,
	-- 			show_buffer_close_icons = false,
	--			show_close_icon = false,
	--			show_tab_indicators = false,
	--			persist_buffer_sort = true,
	--			separator_style = "thin",
	--			enforce_regular_tabs = true,
	--			always_show_bufferline = true,
	--			sort_by = "id",
	--		},
    --   })
-- end,
}
