{ config, pkgs, ... }:
{
	imports = [ ./themes/paradise.nix ];
	stylix = {
  		enable = true;
  		autoEnable = false;
		cursor = {
			name = "GoogleDot-Black";
			package = pkgs.google-cursor;
			size = 21;
		};
		fonts = {
			serif = {
				name = "JetBrainsMono NerdFont";
				package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
			};
			monospace = config.stylix.fonts.serif;
			emoji = {
				name = "OpenMoji Color";
				package = pkgs.noto-fonts-emoji;
			};
			sizes = {
				desktop = 10;
				popups = 10;
				applications = 12;
				terminal = 12;
			};
		};
		targets = {
			tmux.enable = true;
			fish.enable = true;
			nushell.enable = true;
			hyprland.enable = true;
			sway.enable = true;
			waybar = { enable = true; enableCenterBackColors = true; enableLeftBackColors = true; enableRightBackColors = true; };
			foot.enable = true;
			kitty = { enable = true; variant256Colors = false; };
			gtk.enable = true;
			helix.enable = true;
			yazi.enable = true;
			fzf.enable = true;
			bat.enable = true;
			mako.enable = true;
			vesktop.enable = true;
			qutebrowser.enable = true;
			firefox = { enable = true; };
		};
	};
}
