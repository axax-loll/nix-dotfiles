{ config, pkgs, inputs, lib, ... }:
let
	repo = "https://github.com/axax-loll/fuji-wallpapers/blob/main";
	hpkg = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system};
in
{
	# OS PACKAGES
	nixpkgs = { hostPlatform = lib.mkDefault "x86_64-linux"; };
	environment.systemPackages = with pkgs; [
		nh git fish
		doas micro
		zapret
		hyprland
		home-manager
		greetd.regreet
		cage

		adw-gtk3
	];
	programs = {
		fish.enable = true;
		hyprland = {
			enable = true;
			package = hpkg.hyprland;
			portalPackage = hpkg.xdg-desktop-portal-hyprland;
		};
		regreet = {
			enable = true;
			package = pkgs.greetd.regreet;
			settings = {
				background = {
					path = "${repo}/bridge.jpg?raw=true";
					fit = "Contain";
				};
				commands = {
					reboot = [ "systemctl" "reboot" ];
					poweroff = [ "systemctl" "poweroff" ];
				};
				appearance.greeting_msg = "Welcome back!";
			};
			theme = {
				name = "adw-gtk3";
				package = pkgs.adw-gtk3;
			};
			cursorTheme = {
				name = "GoogleDot-Black";
				package = pkgs.google-cursor;
			};
			iconTheme = {
				name = "Papirus-Dark";
				package = pkgs.papirus-icon-theme;
			};
			font = {
				name = "JetBrainsMono NerdFont";
				package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
				size = 14;
			};
		};
	};
}
