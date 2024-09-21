{ pkgs, ... }:
{
	# SUDO AND DOAS FOR ROOT ACCESS
	security.sudo.enable = true;
	security.doas = {
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
}
