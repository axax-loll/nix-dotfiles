{ pkgs, config, lib, ... }:
{
	wayland.windowManager.sway.config.keybindings =
		let
			mod = config.wayland.windowManager.sway.config.modifier;
		in
		lib.mkOptionDefault {
			"${mod}+Return" = "exec ${pkgs.foot}/bin/foot";
			"${mod}+q" = "kill";
			"${mod}+f" = "fullscreen";
			"${mod}+space" = "floating toggle";
			"${mod}+c" = "exec swaymsg move position center";

			"${mod}+Tab" = "exec nwg-drawer -nocats -nofs -d -c 7 -mb -49";

			"${mod}+grave" = "exec swaymsg exit";
			"${mod}+Shift+grave" = "reload";

			"${mod}+1" = "workspace number 1";
			"${mod}+2" = "workspace number 2";
			"${mod}+3" = "workspace number 3";
			"${mod}+4" = "workspace number 4";
			"${mod}+5" = "workspace number 5";
			"${mod}+6" = "workspace number 6";
			"${mod}+7" = "workspace number 7";
			"${mod}+8" = "workspace number 8";
			"${mod}+9" = "workspace number 9";
			"${mod}+0" = "workspace number 10";
			
			"${mod}+Shift+1" = "move container to workspace number 1";
			"${mod}+Shift+2" = "move container to workspace number 2";
			"${mod}+Shift+3" = "move container to workspace number 3";
			"${mod}+Shift+4" = "move container to workspace number 4";
			"${mod}+Shift+5" = "move container to workspace number 5";
			"${mod}+Shift+6" = "move container to workspace number 6";
			"${mod}+Shift+7" = "move container to workspace number 7";
			"${mod}+Shift+8" = "move container to workspace number 8";
			"${mod}+Shift+9" = "move container to workspace number 9";
			"${mod}+Shift+0" = "move container to workspace number 10";
	};
}
