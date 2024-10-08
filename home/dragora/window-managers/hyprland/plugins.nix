{ pkgs, inputs, config, ... }:
{
	wayland.windowManager.hyprland = with config.lib.stylix.colors; {
		plugins = with inputs; [
			# COMMUNITY
			hyprfocus.packages.${pkgs.system}.default
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
		};
	};
}
