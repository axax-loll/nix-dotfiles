{ pkgs, config, lib, ...}:
{
	services.mako = with config.lib.stylix.colors; {
		enable = false;
		icons = true;
		anchor = "top-right";
		backgroundColor = lib.mkForce "#${base01}";
		borderColor = lib.mkForce "#${base0E}";
		borderRadius= 12;
		borderSize = 2;
		textColor = lib.mkForce "#${base05}";
		layer = "overlay";
		sort = "-time";
		maxVisible = 5;
		defaultTimeout = 8;
	};
}
