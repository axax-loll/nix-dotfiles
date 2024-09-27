{ pkgs, config, lib, ... }:
let
	m = "Mod4";
	s = "Shift";
	c = "Ctrl";
	a = "Alt";

	pr = "Print";
in
{
	wayland.windowManager.sway = with config.lib.stylix.colors; {
		config = {
			input = { "*" = { xkb_layout = "us,ru"; xkb_options = "grp:caps_toggle"; }; };
			startup = [
				# { command = "${...}"; }
			];
		
			modifier = "Mod4";
			left = "h";
			down = "j";
			up = "k";
			right = "l";
		
			bindkeysToCode = true;
			workspaceAutoBackAndForth = true;
		
			gaps = {
				inner = 4;
				outer = 4;

				smartBorders = "on";
				smartGaps = true;
			};
			window = {
				border = 2;
				titlebar = false;
				hideEdgeBorders = "smart";
			};
			floating = {
				border = 2;
				titlebar = false;
				modifier = "Mod4";
			};

			colors = lib.mkForce {
				background = "#${base00}";
				focused = {
					background = "#${base00}";
					border = "#${base00}";
					childBorder = "#${base0B}";
					indicator = "#${base08}";
					text = "#${base06}";
				};
				focusedInactive = {
					background = "#${base02}";
					border = "#${base00}";
					childBorder = "#${base0B}";
					indicator = "#${base08}";
					text = "#${base04}";
				};
				unfocused = {
					background = "#${base00}";
					border = "#${base00}";
					childBorder = "#${base0B}";
					indicator = "#${base08}";
					text = "#${base06}";
				};
				urgent = {
					background = "#${base00}";
					border = "#${base08}";
					childBorder = "#${base0B}";
					indicator = "#${base08}";
					text = "#${base06}";
				};
			};
		};
		extraConfig = "
			corner_radius 10
			blur enable
			blur_xray on

			shadows enable
			shadows_on_csd enable
			shadow_color #${base00}
			shadow_blur_radius 12

			default_dim_inactive 0.4
		";
	};
}
