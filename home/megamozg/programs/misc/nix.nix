{ pkgs, ... }:
{
	nix = {
		package = pkgs.nix;
		settings = {
			warn-dirty = false;
			experimental-features = [ "nix-command" "flakes" ];
			extra-experimental-features = [ "nix-command" "flakes" ];
			builders-use-substitutes = true;
			auto-optimise-store = true;
			extra-substituters = [
				"https://yazi.cachix.org"
			];
			extra-trusted-public-keys = [
				"yazi.cachix.org-1:Dcdz63NZKfvUCbDGngQDAZq6kOroIrFoyO064uvLh8k="
			];
			trusted-users = [
				"megamozg"
				"@wheel"
			];
		};
	};
	nixpkgs.config = {
		allowBroken = true;
		allowUnfree = true;
	};
}
