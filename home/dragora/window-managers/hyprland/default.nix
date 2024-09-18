{ pkgs, ... }: 
{
 	wayland.windowManager.hyprland = {
	  	enable = true;
		xwayland.enable = true;
		systemd.enable = true;
	};
	imports = [ ./binds.nix ./rules.nix ./settings.nix ];
}
