{ pkgs, ... }:
{
	security = {
		sudo = { # FUCKING CRAP
			enable = true;
		};
		doas = { # VERY TOP
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
		pam = { # SOMTHING WITH FPRINT
			services = {
				swaylock.fprintAuth = true;
			};
		};
		polkit = {
			enable = true;
		};
	};
}
