return {
  "sphamba/smear-cursor.nvim",
	config = function()
		local smear_cursor = require("smear_cursor")
		smear_cursor.setup({
            -- Other options
            stiffness = 0.5,
            trailing_stiffness = 0.49,
            never_draw_over_target = false,
            cursor_color = "#39FF14",
        })
	end,
  opts = {
    -- Smear cursor when switching buffers or windows.
    smear_befween_buffers = true,

    -- Smear cursor when moving within line or to neighbor lines.
    -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
    smear_between_neighbor_lines = true,

    -- Draw the smear in buffer space instead of screen space when scrolling
    scroll_buffer_space = true,

    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    -- Smears will blend better on all backgrounds.
    legacy_computing_symbols_support = false,

    -- Smear cursor in insert mode.
    -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
    smear_insert_mode = true,

  },
}
