{ pkgs, ... }:
{
	programs.swaylock = {
		enable = true;
		package = pkgs.swaylock-effects;
		settings = {
			image = "~/.walls/wp.png";
		};
	};
}
