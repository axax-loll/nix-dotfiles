{ pkgs, ... }:
{
	imports = [ ../../../home/dragora/themes/stylix/themes/base16.nix ];
	stylix = {
		enable = true;
		autoEnable = false;
		targets = {
			console.enable = true;
		};
	};
}
