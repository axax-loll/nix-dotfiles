{ pkgs, ... }:
{
	nix = {
		package = pkgs.nix;
		settings = {
			experimental-features = [ "nix-command" "flakes" ];
			builders-use-substitutes = true;
			auto-optimise-store = true;
		};
	};
	nixpkgs.config = {
		allowBroken = true;
		allowUnfree = true;
	};
}
