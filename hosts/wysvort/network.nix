{ lib, ... }: 
{
	# NETWORKING
	networking = {
		hostName = "wysvort";
		networkmanager = {
  			enable = true;
  			insertNameservers = [ "1.1.1.1" "1.0.0.1" ];
		};
		useDHCP = lib.mkDefault true;
		nftables.enable = true;
		resolvconf.dnsSingleRequest = true;
	};
}
