{ pkgs, config, ... }: 
{
	# SYSTEM INFO AND USERS
	users.users = {
		megamozg = {
			shell = pkgs.fish;
			isNormalUser = true;
			extraGroups = [ "networkmanager" "wheel" ];
		};
	};
	system.stateVersion = "24.05";
}
