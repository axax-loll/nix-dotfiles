{ pkgs, lib, ... }:
{
	nix = { # NIX SETTINGS
		settings = {
			warn-dirty = false;
			experimental-features = [ "nix-command" "flakes" ];
			substituters = [
				"https://cache.garnix.io"
				"https://anyrun.cachix.org"
				"https://hyprland.cachix.org"
			];
			trusted-public-keys = [
				"cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
				"anyrun.cachix.org-1:pqBobmOjI7nKlsUMV25u9QHa9btJK65/C8vnO3p346s="
				"hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
			];
			trusted-users = [
				"megamozg"
				"@wheel"
			];
		};
	};

	nixpkgs = {
		hostPlatform = lib.mkDefault "x86_64-linux";
		config = { # NIXPKGS SETS
			allowBroken = true;
			allowUnfree = true;
		};
	};
}
