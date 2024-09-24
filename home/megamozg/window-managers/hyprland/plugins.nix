{ pkgs, inputs, config, ... }:
let
	coma = packages.${pkgs.system};
	hypl = hyprland-plugins.${coma};
in
{
	wayland.windowManager.hyprland = with config.lib.stylix.colors; {
		plugins = with inputs; [
			hyprgrass.${coma}.default
			hyprfocus.${coma}.default
			Hyprspace.${coma}.Hyprspace
			hypl.hyprbars
			hypl.hyprexpo
		];
		settings.plugin = {
			# VIRTUAL WORKSPACES
			overview = {
				panelColor = "rgb(${base00})";
				panelBorderColor = "rgb(${base0C})";
				workspaceActiveBackground = "rgb(${base00})";
				workspaceInactiveBackground = "rgb(${base00})";
				drawActiveWorkspace = false;
				hideOverlayLayers = true;
				hideRealLayers = true;
				showEmptyWorkspace = false;
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
		extraConfig = ''
			hyprgrass-bind = , swipe:4:d, killactive
			hyprgrass-bind = , edge:l:d, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%
			hyprgrass-bind = , edge:l:u, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%

			hyprgrass-bindm = , longpress:2, movewindow
			hyprgrass-bindm = , longpress:3, resizewindow
		'';
	};
}
