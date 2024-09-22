{ pkgs, inputs, ... }: 
let
	hpkg = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system};
in
{
	imports = [ ./binds.nix ./rules.nix ./settings.nix ./plugins.nix ./hyprlock.nix ];
	wayland.windowManager.hyprland = {
	  	enable = true;
		package = hpkg.hyprland;
		xwayland.enable = true;
		systemd.enable = true;
	};
	home.packages = with pkgs; [
		light
		hyprlock
		fprintd
		grimblast
		wl-clipboard
		hyprpicker
	];
}
