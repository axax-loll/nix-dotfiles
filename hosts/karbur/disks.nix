{ config, lib, pkgs, modulesPath, ... }:
{
	imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

	# NIXOS SYSTEM ITSELF
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

	# OTHER DISKS
	fileSystems."/mnt/HDD" = {
		device = "/dev/disk/by-uuid/9290bc08-17fe-47db-a535-d4044b8c8dfb";
		fsType = "ext4";
		options = [ "nosuid" "nodev" "nofail" "x-gvfs-show" ];
	};

	fileSystems."/mnt/SSD" = {
		device = "/dev/disk/by-uuid/e6bc9034-95a4-43bd-b5f5-c7c1743e9f7c";
		fsType = "ext4";
		options = [ "nosuid" "nodev" "nofail" "x-gvfs-show" ];
	};
}
