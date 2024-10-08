{ pkgs, ... }:
{
	imports = [ ./binds.nix ./settings.nix ];
	wayland.windowManager.sway = {
		enable = true;
		xwayland = true;
		systemd.enable = true;

		# package = pkgs.swayfx;
	};
}
