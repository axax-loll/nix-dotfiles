{ pkgs, config, ... }:
{
	xdg = {
		portal = {
			enable = true;
			# xdgOpenUsePortal = true;
			config.common.default = "gtk";
			extraPortals = with pkgs; [
				xdg-desktop-portal-hyprland
				xdg-desktop-portal-gtk
			];
		};
		mime = {
			enable = true;
		};
		userDirs = {
			enable = true;
			createDirectories = true;
			desktop = "${config.home.homeDirectory}/Desktop";
			documents = "${config.home.homeDirectory}/Documents";
			download = "${config.home.homeDirectory}/Downloads";
			music = "${config.home.homeDirectory}/Music";
			pictures = "${config.home.homeDirectory}/Pictures";
			publicShare = "${config.home.homeDirectory}/";
			templates = "${config.home.homeDirectory}/";
			videos = "${config.home.homeDirectory}/Videos";
		};
	};
}
