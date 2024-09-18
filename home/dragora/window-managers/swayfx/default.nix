{ pkgs, ... }:
{
	wayland.windowManager.sway = {
		enable = true;
		xwayland = true;
		systemd.enable = true;

		package = pkgs.swayfx;
	};
	imports = [ ./binds.nix ./settings.nix ];
}
