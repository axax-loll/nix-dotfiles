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
		fprintd = {
			enable = true;
			package = pkgs.fprintd-tod;
			tod = {
				enable = true;
				package = pkgs.libfprint-2-tod1-vfs0090;
			};
		};
	};
}
