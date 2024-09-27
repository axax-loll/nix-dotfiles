{ pkgs, inputs, ... }:
{
	# SYSTEM COLORSCHEME (see targets)
	imports = [ 
		inputs.stylix.nixosModules.stylix
		../../../home/dragora/themes/stylix/themes/base16.nix
	]; # SYNC WITH HOME MANAGER THEME
	stylix = {
		enable = true;
		autoEnable = false;
		targets = {
			console.enable = true; # TTY
			nixos-icons.enable = true; # ICONS
			chromium.enable = true; # CHROMIUM LOL
			fish.enable = true; # SHELL
		};
	};
}
