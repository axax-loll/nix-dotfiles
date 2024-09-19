{ pkgs, ... }:
{
	imports = [ ../../../home/dragora/themes/stylix/themes/base16.nix ];
	stylix = {
		enable = true;
		autoEnable = false;
		targets = {
			console.enable = true;
			nixos-icons.enable = true;
			chromium.enable = true;
			fish.enable = true;
		};
	};
}
