{ config, lib, pkgs, modulesPath, ... }:
{
	imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

	# NIXOS SYSTEM ITSELF
	fileSystems."/" = {
		device = "/dev/disk/by-uuid/9913d333-cd8d-4960-8e3c-4af764b9a9ca";
		fsType = "btrfs";
		options = [ "subvol=@" ];
	};

	fileSystems."/boot" = {
		device = "/dev/disk/by-uuid/8547-1299";
		fsType = "vfat";
		options = [ "fmask=0022" "dmask=0022" ];
	};
}
