{
	programs.fish = {
		enable = true;
		shellAliases = {
			e = "$EDITOR";
			sudo = "doas";
			
			cp = "cpz";
			rm = "rmz";
			
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
			j = "joshuto";
			nxt = "nix-tree";
			
			m = "micro";
			v = "nvim";
			h = "hx";
			
			fsf = "fastfetch";
			cpf = "cpufetch";
			cav = "cava";
			pmx = "pulsemixer";
			blt = "bluetuith";

			gl = "git clone";
			ga = "git add .";
			gA = "git add";
			gc = "git commit -m";
			gC = "git commit -m 'update  '";
			gp = "git push";
			gP = "git pull";
			
			lut = "lutgen apply -p paradise";
			lutall = "lutgen apply -p paradise ./*";
			icat = "kitten icat";

			ter = "tenki --mode rain --wind disable --timer-color cyan -f 80";
			tes = "tenki --mode snow --wind disable --timer-color yellow -f 80";
			tem = "tenki --mode meteor --wind disable --timer-color red -f 80";
		};
		interactiveShellInit = ''
			set fish_greeting
			[ "$(tty)" = /dev/tty1 ] && exec Hyprland
		'';
	};
	xdg.configFile."lutgen/paradise".text = ''
		151515 1F1F1F 2E2E2E 424242 BBB6B6 E8E3E3 E8E3E3 E8E3E3 B66467 D9BC8C D9BC8C 8C977D 8AA6A2 8DA3B9 A988B0 BBB6B6
	'';
}
