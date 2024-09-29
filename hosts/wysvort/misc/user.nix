{ pkgs, config, ... }: 
{
	users = {
		users = { # USERS
			megamozg = {
				shell = pkgs.fish;
				isNormalUser = true;
				extraGroups = [ "networkmanager" "wheel" "video" ];
			};
		};
	};
	system.stateVersion = "24.05";
}
