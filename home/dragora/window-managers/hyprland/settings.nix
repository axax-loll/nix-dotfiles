{ config, lib, ... }:
{
	wayland.windowManager.hyprland.settings = with config.lib.stylix.colors; {
		general = {
			gaps_in = 0;
			gaps_out = 0;
			border_size = 3;
			layout = "dwindle";
			allow_tearing = false;
			"col.active_border" = lib.mkForce "rgb(${base0F})";
			"col.inactive_border" = lib.mkForce "rgb(${base01})";
		};
		decoration = {
			rounding = 0;
			drop_shadow = true;
			shadow_ignore_window = true;
			shadow_offset = "0 0";
			shadow_range = 10;
			shadow_render_power = 8;
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
		animations = {
			enabled = false;
			bezier = [
				"linear, 1, 1, 1, 1"
				"over, 0, 0.1, 0.1, 0.3"
			];
			animation = [
				"windows, 1, 2, linear, slide"
				"windowsIn, 1, 2, linear, slide"
				"windowsOut, 1, 2, linear, slide"
				"windowsMove, 1, 2, over"
				"border, 1, 3, default"
				"specialWorkspace, 1, 1, default, fade"
				"fade, 1, 2, default"
				"fadeShadow, 1, 4, default"
				"workspaces, 1, 2.7, default, slide"
			];
		};
		input = {
			kb_layout = "us,ru";
			kb_options = "grp:caps_toggle";
			accel_profile = "adaptive";
		};
		dwindle = {
			pseudotile = true;
			preserve_split = true;
			smart_resizing = true;
			no_gaps_when_only = true;
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
