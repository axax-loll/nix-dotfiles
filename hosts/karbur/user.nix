{ pkgs, config, ... }: 
{
	# SYSTEM INFO AND USERS
	users.users = {
		dragora = {
			shell = pkgs.fish;
			isNormalUser = true;
			extraGroups = [ "networkmanager" "wheel" ];
		};
	};
	system.stateVersion = "24.05";
}
