{ pkgs, inputs, ... }: 
{
	imports = [ ./binds.nix ./rules.nix ./settings.nix ];
	wayland.windowManager.hyprland = {
	  	enable = true;
		package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
		xwayland.enable = true;
		systemd.enable = true;

		plugins = {
			inputs.Hyprspace.packages.${pkgs.system}.Hyprspace
		};
	};
}
