{ pkgs, ... }:
{
	nix = {
		settings = {
			experimental-features = [ "nix-command" "flakes" ];
			substituters = [
				"https://cache.garnix.io"
				"https://anyrun.cachix.org"
			];
			trusted-public-keys = [
				"cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
				"anyrun.cachix.org-1:pqBobmOjI7nKlsUMV25u9QHa9btJK65/C8vnO3p346s="
			];
		};
	};
	nixpkgs.config = {
		allowBroken = true;
		allowUnfree = true;
	};
}
