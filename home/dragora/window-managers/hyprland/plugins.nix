{ pkgs, inputs, config, ... }:
{
	wayland.windowManager.hyprland = with config.lib.stylix.colors; {
		plugins = with inputs; [
			# COMMUNITY
			hyprfocus.packages.${pkgs.system}.default

			# BUILTIN
			# hyprland-plugins.packages.${pkgs.system}.hyprbars
			hyprland-plugins.packages.${pkgs.system}.hyprexpo
		];
		settings.plugin = {
			# FOCUS
			hyprfocus = {
				enabled = "yes";
				animate_floating = "yes";
				animate_workspacechange = "yes";
				focus_animation = "shrink";
				bezier = [
					"bezIn, 0.5,0.0,1.0,0.5"
					"bezOut, 0.0,0.5,0.5,1.0"
					"overshot, 0.05, 0.9, 0.1, 1.05"
					"smoothOut, 0.36, 0, 0.66, -0.56"
					"smoothIn, 0.25, 1, 0.5, 1"
					"realsmooth, 0.28,0.29,.69,1.08"
				];
				shrink = {
					shrink_percentage = 0.95;
					in_bezier = "realsmooth";
					in_speed = 1;
					out_bezier = "realsmooth";
					out_speed = 2;
				};
			};

			# EXPO LIKE IDK
			hyprexpo = {
				columns = 3;
				gap_size = 5;
				bg_col = "rgb(${base00})";
				workspace_method = "center current";

				enable_gesture = true;
				gesture_fingers = 3;
				gesture_distance = 300;
				gesture_positive = true;
			};

			# WINDOW TITLES
			# hyprbars = {
			# 	bar_height = 20;
			# 	bar_color = "rgb(${base00})";
			# 	"col.text" = "rgb(${base06})";
			# 	bar_text_size = 12;
			# 	bar_text_font = "JetBrainsMono NerdFont";
			# 	bar_text_align = "left";
			# 	bar_buttons_alignment = "left";
			# 	bar_part_of_window = true;
			# 	bar_precedence_over_border = true;
			# 	hyprbars-button = [
			# 		"rgb(${base08}), 10, 󰖭, hyprctl dispatch killactive"
			# 		"rgb(${base0C}), 10, , hyprctl dispatch fullscreen 1"
			# 	];
			# };
		};
	};
}
