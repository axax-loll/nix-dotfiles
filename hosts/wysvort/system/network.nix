{ lib, ... }: 
{
	# NETWORKING
	networking = {
		hostName = "wysvort";
		networkmanager = { # NETWORK MANAGER
  			enable = true;
  			insertNameservers = [ "1.1.1.1" "1.0.0.1" ];
			wifi.powersave = true;
		};
		useDHCP = lib.mkDefault true;
		nftables.enable = true;
		resolvconf.dnsSingleRequest = true;
	};
}
