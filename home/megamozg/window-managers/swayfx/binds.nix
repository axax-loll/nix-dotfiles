{ pkgs, config, lib, ... }:
let
	# MODIFIERS
	m = "Mod4";
	s = "Shift";
	c = "Ctrl";
	a = "Alt";

	# BUTTUONS
	rt = "Return";
	tb = "Tab";
	sp = "Space";
	gr = "grave";
	pr = "print";

	# DISPATCHERS
	ex = "exec";
	ws = "workspace";
	mv = "move";
	cn = "container";
	nm = "number";

	# ARROWS
	r = "right";
	d = "down";
	u = "up";
	l = "left";
in
{
	wayland.windowManager.sway.config.keybindings = lib.mkOptionDefault {
			# SWAY NATIVE CMD
			"${m}+q" = "kill";
			"${m}+f" = "fullscreen";
			"${m}+${sp}" = "floating toggle";
			"${m}+c" = "${ex} swaymsg move position center";
			"${m}+w" = "${ex} killall -SIGUSR1 waybar";

			# PROGRAMS
			"${m}+${rt}" = "${ex} foot -T Terminal";
			"${m}+${s}+${rt}" = "${ex} foot -a float -T Terminal";
      "${m}+${a}+${rt}" = "${ex} foot -w $(slurp -b '#181926CC' -c '#8bd5caFF' -w '3' -f '%wx%h') -a footz -T Terminal";

			"${m}+${tb}" = "${ex} nwg-drawer -nocats -nofs -d -c 7 -mb -49";
			
			"${m}+b" = "${ex} firefox";
			"${m}+${s}+b" = "${ex} obsidian";

			"${m}+v" = "${ex} ayugram";
			"${m}+${s}+v" = "${ex} vesktop";

			"${m}+m" = "${ex} spotify";

			"${m}+l" = "${ex} transmission-gtk";
			"${m}+${s}+l" = "${ex} qbittorrent";

			"${m}+a" = "${ex} anicli-ru -q 720";

      "${pr}" = "grimshot savecopy anything";
      "${pr}+${s}" = "grimshot savecopy output";
      
			# CONTROL
			"${m}+g" = "layout tabbed";
			"${m}+${s}+g" = "layout toggle split";

			"${m}+p" = "move scratchpad";
			"${m}+${s}+p" = "scratchpad show";
					
			"${m}+Home" = "exit";
			"${m}+${s}+Home" = "reload";

			# WORKSPACES SWITCH
			"${m}+1" = "${ws} ${nm} 1";
			"${m}+2" = "${ws} ${nm} 2";
			"${m}+3" = "${ws} ${nm} 3";
			"${m}+4" = "${ws} ${nm} 4";
			"${m}+5" = "${ws} ${nm} 5";
			"${m}+6" = "${ws} ${nm} 6";
			"${m}+7" = "${ws} ${nm} 7";
			"${m}+8" = "${ws} ${nm} 8";
			"${m}+9" = "${ws} ${nm} 9";
			"${m}+0" = "${ws} ${nm} 10";

			# WORKSPACES MOVE
			"${m}+${s}+1" = "${mv} ${cn} to ${ws} ${nm} 1";
			"${m}+${s}+2" = "${mv} ${cn} to ${ws} ${nm} 2";
			"${m}+${s}+3" = "${mv} ${cn} to ${ws} ${nm} 3";
			"${m}+${s}+4" = "${mv} ${cn} to ${ws} ${nm} 4";
			"${m}+${s}+5" = "${mv} ${cn} to ${ws} ${nm} 5";
			"${m}+${s}+6" = "${mv} ${cn} to ${ws} ${nm} 6";
			"${m}+${s}+7" = "${mv} ${cn} to ${ws} ${nm} 7";
			"${m}+${s}+8" = "${mv} ${cn} to ${ws} ${nm} 8";
			"${m}+${s}+9" = "${mv} ${cn} to ${ws} ${nm} 9";
			"${m}+${s}+0" = "${mv} ${cn} to ${ws} ${nm} 10";

			# ARROWS
      "${m}+${r}" = "move workspace to output right";
      "${m}+${d}" = "move workspace to output down";
      "${m}+${u}" = "move workspace to output up";
      "${m}+${l}" = "move workspace to output left";

      "${m}+${s}+${r}" = "move right";
    	"${m}+${s}+${d}" = "move down";
      "${m}+${s}+${u}" = "move up";
			"${m}+${s}+${l}" = "move left";

      "${m}+${a}+${r}" = "focus right";
    	"${m}+${a}+${d}" = "focus down";
      "${m}+${a}+${u}" = "focus up";
			"${m}+${a}+${l}" = "focus left";

			# HJKL
      "${m}+h" = "move workspace to output left";
      "${m}+j" = "move workspace to output down";
      "${m}+k" = "move workspace to output up";
      "${m}+l" = "move workspace to output right";

			"${m}+${s}+h" = "move left";
    	"${m}+${s}+j" = "move down";
      "${m}+${s}+k" = "move up";
      "${m}+${s}+l" = "move right";

			"${m}+${a}+h" = "focus left";
    	"${m}+${a}+j" = "focus down";
      "${m}+${a}+k" = "focus up";
      "${m}+${a}+l" = "focus right";
	};
}
