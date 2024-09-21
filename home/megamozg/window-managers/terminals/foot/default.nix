{ pkgs, lib, ... }:
{
	programs.foot = {
		enable = true;
		server.enable = false;
		settings = {
			main = {
				font = lib.mkForce "JetBrainsMono Nerd Font:size=12";
				pad = "10x10 center";
				resize-by-cells = "yes";
				letter-spacing = 0;
			};
			cursor = {
				style = "block";
			};
			mouse = {
				hide-when-typing = "yes";
			};
		};
	};
}
