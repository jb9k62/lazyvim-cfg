return {
  "sphamba/smear-cursor.nvim",

  opts = {
    -- Smear cursor when switching buffers or windows.
    smear_between_buffers = true,

    -- Smear cursor when moving within line or to neighbor lines.
    -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control.
    smear_between_neighbor_lines = true,

    -- Only smear cursor when moving at least these distances.
    -- min_horizontal_distance_smear = 0,
    -- min_vertical_distance_smear = 0,

    -- Toggles for smear directions.
    -- smear_horizontally = true,
    -- smear_vertically = true,
    -- smear_diagonally = true, -- Neither horizontal nor vertical

    -- Smear cursor when entering or leaving command line mode.
    -- smear_to_cmd = true,

    -- Draw the smear in buffer space instead of screen space when scrolling.
    scroll_buffer_space = true,

    -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
    -- Smears and particles will look a lot less blocky.
    legacy_computing_symbols_support = false,

    -- Set to `true` if your cursor is a vertical bar in normal mode.
    -- vertical_bar_cursor = false,

    -- Smear cursor in insert mode.
    -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
    smear_insert_mode = true,

    -- Set to `true` if your cursor is a vertical bar in insert mode.
    -- vertical_bar_cursor_insert_mode = true,

    -- Smear cursor in replace mode.
    -- smear_replace_mode = false,

    -- Smear cursor in terminal mode.
    -- If the smear goes to the wrong location when enabled, try increasing `delay_after_key`.
    -- smear_terminal_mode = false,

    -- Smear cursor color. Defaults to Cursor GUI color if not set.
    -- Set to "none" to match the text color at the target cursor position.
    -- Can be a hex color code, or a highlight group name.
    -- cursor_color = "#d3cdc3",

    -- Attempt to hide the real cursor by drawing a character below it.
    -- Can be useful when not using `termguicolors`.
    -- Do not set to `true` if `never_draw_over_target` is `false`.
    -- hide_target_hack = false,

    -- Set to `true` to prevent the smear from overlapping the target character,
    -- hiding it until the animation is over.
    -- never_draw_over_target = false,

    -- List of filetypes where the plugin is disabled.
    -- filetypes_disabled = {},

    -- Sets animation framerate in milliseconds.
    -- time_interval = 17,

    -- How fast the smear's head moves towards the target. 0: no movement, 1: instantaneous.
    -- stiffness = 0.6,

    -- How fast the smear's tail moves towards the target. 0: no movement, 1: instantaneous.
    -- trailing_stiffness = 0.45,

    -- Initial velocity factor in the direction opposite to the target.
    -- anticipation = 0.2,

    -- Velocity reduction over time. 0: no reduction, 1: full reduction.
    -- damping = 0.85,

    -- Controls if middle points are closer to the head or the tail.
    -- < 1: closer to the tail, > 1: closer to the head.
    -- trailing_exponent = 3,

    -- Stop animating when the smear's tail is within this distance (characters) from the target.
    -- distance_stop_animating = 0.1,

    -- Insert mode animation parameters.
    -- stiffness_insert_mode = 0.5,
    -- trailing_stiffness_insert_mode = 0.5,
    -- damping_insert_mode = 0.9,
    -- trailing_exponent_insert_mode = 1,
    -- distance_stop_animating_vertical_bar = 0.875,

    -- Color blending parameters.
    -- color_levels = 16,   -- Minimum 1
    -- gamma = 2.2,         -- For color blending
    -- gradient_exponent = 1.0, -- 0: no gradient, 1: linear

    -- Particles (disabled by default; enable with `particles_enabled = true`).
    -- particles_enabled = false,
    -- particle_max_num = 100,
    -- particle_spread = 0.5,
    -- particles_per_second = 200,
    -- particle_max_lifetime = 300, -- milliseconds
    -- particle_gravity = 20,       -- characters per second squared
  },
}
