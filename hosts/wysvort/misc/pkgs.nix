{ config, pkgs, inputs, lib, ... }:
let
	hpkg = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system};
in
{
	# OS PACKAGES
	nixpkgs = { hostPlatform = lib.mkDefault "x86_64-linux"; };
	environment.systemPackages = with pkgs; [
		nh git fish
		doas micro
		zapret lact
		hyprland light
		home-manager

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
