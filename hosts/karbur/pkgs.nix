{ config, pkgs, inputs, lib, ... }:
{
	nixpkgs = { hostPlatform = lib.mkDefault "x86_64-linux"; };
	environment.systemPackages = with pkgs; [
		nh
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
