{ pkgs, inputs, ... }:
{
	# SYSTEM COLORSCHEME (see targets)
	imports = [
		inputs.stylix.nixosModules.stylix
		./paradise.nix
	];
	stylix = {
		enable = true;
		autoEnable = false;
		targets = {
			console.enable = true; # TTY
			nixos-icons.enable = true; # ICONS
			chromium.enable = true; # CHROMIUM LOL
			fish.enable = true; # SHELL
			plymouth = {
				enable = true;
				logoAnimated = true;
			};
		};
	};
}
