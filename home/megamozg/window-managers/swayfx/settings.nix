{ pkgs, config, ... }:
{
	wayland.windowManager.sway = {
		config = with config.lib.stylix.colors; {
			input = { "*" = { xkb_layout = "us,ru"; xkb_options = "grp:caps_toggle"; }; };
		
			modifier = "Mod4";
			left = "h";
			down = "j";
			up = "k";
			right = "l";
		
			bindkeysToCode = true;
			workspaceAutoBackAndForth = true;
		
			gaps = {
				inner = 0;
				outer = 0;

				smartBorders = "on";
				smartGaps = true;
			};
			window = {
				border = 2;
				hideEdgeBorders = "smart";
			};
			floating = {
				border = 2;
				modifier = "Mod4";
			};
		};
		extraConfig = "
			corner_radius 10
			blur enable
			blur_xray on

			shadows enable
			shadows_on_csd enable
			shadow_color #{$base00}
			shadow_blur_radius 12
		";
	};
}
