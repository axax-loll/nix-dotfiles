{ config, pkgs, ... }:
{
	# NIX HELPER
	programs.nh = {
		enable = true;
		clean.enable = true;
		clean.extraArgs = "--keep-since 4d --keep 3";
		flake = "/home/megamozg/.flake";
	};
}