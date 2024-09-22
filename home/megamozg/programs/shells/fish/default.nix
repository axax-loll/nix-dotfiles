{
	programs.fish = {
		enable = true;
		shellAliases = {
			e = "$EDITOR";
			sudo = "doas";
			
			c = "clear";
			x = "exit";
			
			nhs = "nh home switch";
			nos = "nh os switch";
			nca = "nh clean all";
			
			ls = "eza --icons=always --group-directories-first";
			lsl = "eza --icons=always -l --group-directories-first";
			lst = "eza --icons=always -T --group-directories-first";
			
			ls1 = "eza --icons=always -1 --group-directories-first";
			ls11 = "eza --icons=never -1 --group-directories-first";
			lsd = "eza --icons=never -D1 --group-directories-first";
			lsf = "eza --icons=never -f1 --group-directories-first";
			
			cat = "bat --theme base16";
			
			r = "ranger";
			y = "yazi";
			
			m = "micro";
			v = "nvim";
			h = "hx";
			
			ff = "fastfetch";
			ca = "cava";
			pm = "pulsemixer";
			bt = "bluetuith";

			gl = "git clone";
			ga = "git add .";
			gA = "git add";
			gc = "git commit -m";
			gC = "git commit -m 'update  '";
			gp = "git push";
			gP = "git pull";
			
			lut = "lutgen apply -p mountain-fuji";
			lutall = "lutgen apply -p mountain-fuji ./*";
			icat = "kitten icat";
		};
		interactiveShellInit = ''
			set fish_greeting
		'';
	};
}
