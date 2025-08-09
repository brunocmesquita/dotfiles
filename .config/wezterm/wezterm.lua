-- Load the wezterm module to access its functions and configurations
local wezterm = require("wezterm")

-- Create the configuration table
local config = {
	-- color_scheme = "Vesper",
	use_cap_height_to_scale_fallback_fonts = true,
	-- Set the primary and fallback fonts for the terminal
	freetype_load_target = "Light",
	freetype_render_target = "HorizontalLcd",
	font = wezterm.font_with_fallback({
		{ family = "Maple Mono NF" },
		{ family = "DankMono Nerd Font Mono" },
	}),
	-- font_size = 20.0

	-- colors = {
	-- 	foreground = "#CBE0F0",
	-- 	background = "#011423",
	-- 	cursor_bg = "#47FF9C",
	-- 	cursor_border = "#47FF9C",
	-- 	cursor_fg = "#011423",
	-- 	selection_bg = "#033259",
	-- 	selection_fg = "#CBE0F0",
	-- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	-- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
	-- 	-- cursor_bg = "white",
	-- 	-- cursor_border = "white",
	-- 	indexed = { [239] = "lightslategrey" },
	-- },
	color_scheme = "UltraDark",

	font_size = 16.0, -- Set the font size to 16.0; adjust as needed
	line_height = 1.3, -- Set line height for spacing between lines
	adjust_window_size_when_changing_font_size = false, -- Maintain window size when changing font size

	window_decorations = "RESIZE", -- Allow window resizing but no other decorations

	window_background_opacity = 0.97, -- Set window transparency

	enable_tab_bar = false, -- Disable the tab bar

	default_cursor_style = "BlinkingUnderline", -- Set the cursor style to a blinking underline

	-- Configure window padding (space around the terminal content)
	window_padding = {
		left = "2cell", -- Add padding of 2 character cells on the left
		right = "2cell", -- Add padding of 2 character cells on the right
		top = "1cell", -- Add padding of 1 character cell on the top
		bottom = "2cell", -- Add padding of 2 character cells on the bottom
	},

	-- Define custom key mappings
	keys = {
		-- Map Option-LeftArrow to Alt-b for backward-word movement in line editors
		{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },

		-- Map Option-RightArrow to Alt-f for forward-word movement in line editors
		{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
	},

	macos_window_background_blur = 20, -- Set blur radius for the background
	max_fps = 120,
	prefer_egl = true,
}

-- Return the configuration table
return config
