{ pkgs, inputs, config, ... }:
{
	wayland.windowManager.hyprland = with config.lib.stylix.colors; {
		plugins = [
			inputs.Hyprspace.packages.${pkgs.system}.Hyprspace
		];
		settings.plugin = {
			overview = {
				panelColor = "rgb(${base00})";
				panelBorderColor = "rgb(${base0C})";
				workspaceActiveBackground = "rgb(${base00})";
				workspaceInactiveBackground = "rgb(${base00})";
				dragAlpha = 1;

				panelHeight = 200;
				onBottom = true;
				gapsIn = 4;
				gapsOut = 8;

				overrideAnimSpeed = 2;
			};
		};
	};
}
