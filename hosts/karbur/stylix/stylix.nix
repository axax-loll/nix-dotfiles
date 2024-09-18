{ pkgs, ... }:
{
	imports = [ ./paradise.nix ];
	stylix = {
		enable = true;
		autoEnable = false;
		targets = {
			console.enable = true;
		};
	};
}
