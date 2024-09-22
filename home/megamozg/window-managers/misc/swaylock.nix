{ pkgs, ... }:
{
	programs.swaylock = {
		enable = false;
		package = pkgs.swaylock-effects;
		settings = {
			image = "~/.walls/wp.png";
		};
	};
}
