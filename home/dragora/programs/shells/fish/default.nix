{
	programs.fish = {
		enable = true;
		shellAliases = {
			e = "$EDITOR";
			sudo = "doas";
			
			c = "clear";
			x = "exit";
			
			hsw = "home-manager switch --flake ~/.flake/.#azikx";
			nsw = "doas nixos-rebuild switch --flake ~/.flake/.#karbur";
			ngd = "nix-collect-garbage -d";
			ngD = "doas nix-collect-garbage -d";
			
			ls = "eza --icons=always";
			lsl = "eza --icons=always -l";
			ls1 = "eza --icons=always -1";
			
			cat = "bat --theme base16";
			
			r = "ranger";
			y = "yazi";
			
			m = "micro";
			v = "neovim";
			h = "helix";
			
			ff = "fastfetch";
			ca = "cava";
			pm = "pulsemixer";
			bt = "bluetuith";
			
			lut = "lutgen apply -p catppuccin-macchiato";
			icat = "kitten icat";
		};
		interactiveShellInit = ''
			set fish_greeting
			[ "$(tty)" = /dev/tty1 ] && exec Hyprland
		'';
	};
}
