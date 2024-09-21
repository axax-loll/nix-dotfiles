{ config, pkgs, inputs, lib, ... }:
{
	# OS PACKAGES
	nixpkgs = { hostPlatform = lib.mkDefault "x86_64-linux"; };
	environment.systemPackages = with pkgs; [
		nh
		git
		zsh
		fish
		doas
		micro
		zapret
		hyprland
		home-manager
	];
	programs = {
		fish.enable = true;
		hyprland.enable = true;
	};
}
