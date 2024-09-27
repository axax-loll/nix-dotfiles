{ config, lib, ... }:
{
	wayland.windowManager.hyprland.settings = with config.lib.stylix.colors; {
		monitor = ", 1920x1080@60, auto, 1";
		env = [ "SLURP_ARGS, -b ${base00}CC -c ${base00}FF -B ${base0F}CC" ];
		exec-once = [
			"mako"
			"waybar"
		];

		# APPERANCE
		general = {
			gaps_in = 4;
			gaps_out = 8;
			border_size = 3;
			layout = "dwindle";
			allow_tearing = false;
			"col.active_border" = lib.mkForce "rgb(${base0C}) rgb(${base0B}) 45deg";
			"col.inactive_border" = lib.mkForce "rgb(${base01})";
		};
		decoration = {
			rounding = 12;
			drop_shadow = true;
			shadow_ignore_window = true;
			shadow_offset = "0 0";
			shadow_range = 10;
			shadow_render_power = 8;
			dim_inactive = true;
			dim_strength = 0.3;
			blur = {
				enabled = true;
				size = 18;
				passes = 5;
				noise = 0;
				new_optimizations = true;
				ignore_opacity = true;
				xray = false;
				vibrancy = 0.9;
				popups = true;
				special = true;
			};
		};
		group = {
			"col.border_active" = lib.mkForce "rgb(${base0A}) rgb(${base09}) 45deg";
			"col.border_inactive" = lib.mkForce "rgb(${base01})";
			groupbar = {
				gradients = false;
				"col.active" = lib.mkForce "rgb(${base05})";
				"col.inactive" = lib.mkForce "rgb(${base01})";
				render_titles = false;
			};
		};

		# ANIMATIONS
		animations = {
			enabled = true;
			first_launch_animation = false;
			bezier = [
				"linear, 1, 1, 1, 1"
				"over, 0, 0.1, 0.1, 0.3"
				"myBezier, 0.05, 0.9, 0.1, 1.0"
			];
			animation = [
				"windowsIn, 1, 3, myBezier, popin 80%"
				"windowsOut, 1, 3, myBezier, popin 80%"
				"windowsMove, 1, 2, over"
				
				"border, 1, 3, myBezier"
				"workspaces, 1, 2.7, default, slide"
				"specialWorkspaceIn, 1, 1, default, fade"
				"specialWorkspaceOut, 1, 1, default, fade"
				
				"fade, 1, 2, myBezier"
				"fadeShadow, 1, 4, default"
			];
		};
		
		# TRACKPOINT | TOUCHPAD | MOUSE
		cursor.inactive_timeout = 1;
		input = {
			kb_layout = "us,ru";
			kb_options = "grp:caps_toggle";
			accel_profile = "adaptive";
			touchpad = {
				natural_scroll = false;
				disable_while_typing = true;
			};
		};
		gestures = {
			workspace_swipe = true;
			workspace_swipe_fingers = 3;
			workspace_swipe_create_new = true;
		};

		# WINDOW LAYOUT
		dwindle = {
			pseudotile = true;
			preserve_split = true;
			smart_resizing = true;
			# no_gaps_when_only = true;
			force_split = 2;
		};
		
		misc = {
			disable_hyprland_logo = true;
			disable_splash_rendering = true;
			mouse_move_enables_dpms = true;
			vfr = true;
			vrr = 1;
			animate_manual_resizes = true;
			animate_mouse_windowdragging = true;
			enable_swallow = true ;
			close_special_on_empty = true;
			background_color = lib.mkForce "rgb(${base00})";
		};
	};
}
