{ pkgs, ... }: 
{
	# SERVICES ANY PROGRAM
	services = {
		getty = {
			autologinUser = "dragora";
			# greetingLine = "";
		};
		xserver = {
			xkb = {
    			layout = "us";
    			variant = "qwerty";
    			options = "grp:caps_toggle";
			};
			# videoDrivers = [ "amdgpu" ];
		};
		tailscale = {
			enable = true;
			useRoutingFeatures = "both";
		};
		gvfs.enable = true;
	};
}
