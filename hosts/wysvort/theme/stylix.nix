{ pkgs, inputs, ... }:
{
	# SYSTEM COLORSCHEME (see targets)
	imports = [
		inputs.stylix.nixosModules.stylix
		./paradise.nix
	];
	stylix = { # COLORIZE !!!
		enable = true;
		autoEnable = false;
		targets = {
			console.enable = true; # TTY
			nixos-icons.enable = true; # ICONS
			chromium.enable = true; # CHROMIUM LOL
			fish.enable = true; # SHELL
			plymouth = { # STARTING SCREEN
				enable = true;
				logoAnimated = true;
			};
		};
	};
}
