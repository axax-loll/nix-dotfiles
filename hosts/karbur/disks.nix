{ config, lib, pkgs, modulesPath, ... }:
{
	imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

	fileSystems."/" = {
		device = "/dev/disk/by-uuid/00fc272e-b8e6-4081-9f75-fac3119b1e98";
		fsType = "btrfs";
		options = [ "subvol=@" ];
	};

	fileSystems."/boot" = {
		device = "/dev/disk/by-uuid/B2AF-39E5";
		fsType = "vfat";
		options = [ "fmask=0077" "dmask=0077" ];
	};
}
