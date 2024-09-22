{ pkgs, inputs, config, ... }:
{
	wayland.windowManager.hyprland = with config.lib.stylix.colors; {
		plugins = with inputs; [
			hyprgrass.packages.${pkgs.system}.default
			Hyprspace.packages.${pkgs.system}.Hyprspace
		];
		settings.plugin = {
			# VIRTUAL WORKSPACES
			overview = {
				panelColor = "rgb(${base00})";
				panelBorderColor = "rgb(${base0C})";
				workspaceActiveBackground = "rgb(${base00})";
				workspaceInactiveBackground = "rgb(${base00})";
				dragAlpha = 1;

				panelHeight = 200;
				onBottom = true;
				gapsIn = 4;
				gapsOut = 8;

				overrideAnimSpeed = 2;
			};

			# TOUCHPAD GESTURES
			touch_gestures = {
				sensitivity = 1.0;
				workspace_swipe_fingers = 3;
				workspace_swipe_edge = "d";
			};
		};
		extraConfig = ''
			hyprgrass-bind = , swipe:4:d, killactive
			hyprgrass-bind = , edge:l:d, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%
			hyprgrass-bind = , edge:l:u, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%

			hyprgrass-bindm = , longpress:2, movewindow
			hyprgrass-bindm = , longpress:3, resizewindow
		'';
	};
}
