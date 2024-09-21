{ pkgs, config, lib, ... }:
{
	xdg.configFile = {
		"nwg-drawer/drawer.css".text = ''
			window {
				background-color: #${config.lib.stylix.colors.base00};
				color: #eeeeee;
			}
			
			button {
			    color: #${config.lib.stylix.colors.base04};
			    background-color: #${config.lib.stylix.colors.base00};
			}
			
			button:hover {
			    color: #${config.lib.stylix.colors.base04};
			    background-color: #${config.lib.stylix.colors.base01};
			}
		'';
	};
}
