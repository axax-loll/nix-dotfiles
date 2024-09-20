{ pkgs, ... }:
{
	# SUDO AND DOAS FOR ROOT ACCESS
	security.sudo.enable = true;
	security.doas = {
		enable = true;
		wheelNeedsPassword = true;
		extraRules = [
			{
				users = [ "dragora" ];
				keepEnv = true; 
				persist = true;
			}
		];
	};
}
