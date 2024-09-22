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
					users = [ "wysvort" ];
					keepEnv = true; 
					persist = true;
				}
			];
		};
		pam = {
			services = {
				swaylock.fprintAuth = true;
				regreet.fprintAuth = true;
				greetd = {
					fprintAuth = true;
					enableGnomeKeyring = true;
				};
			};
		};
		polkit.enable = true;
	};
}
