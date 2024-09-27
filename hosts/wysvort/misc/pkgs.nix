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
		hyprland light
		home-manager
		greetd.regreet

		adw-gtk3
	];

	# PROGRAMS ENABLE
	programs = {
		fish.enable = true;
		hyprland = {
			enable = true;
			package = hpkg.hyprland;
			portalPackage = hpkg.xdg-desktop-portal-hyprland;
		};
	};
}
