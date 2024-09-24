{ pkgs, ... }:
{
	# SUDO AND DOAS FOR ROOT ACCESS
	security = {
		sudo.enable = true;
		doas = {
			enable = true;
			wheelNeedsPassword = true;
			extraRules = [
				{
					users = [ "megamozg" ];
					keepEnv = true; 
					persist = true;
				}
			];
			extraConfig = ''
				permit nopass megamozg as root cmd light
				permit nopass megamozg as root cmd tee
			'';
		};
		pam = {
			services = {
				swaylock.fprintAuth = true;
			};
		};
		polkit.enable = true;
	};
}
