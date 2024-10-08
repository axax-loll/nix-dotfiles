{ config, lib, pkgs, modulesPath, ... }:
{
	description = "EVERYONE NEED YOUR CONFIG";
	imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];
	fileSystems = {
		"/" = { # ROOT
			device = "/dev/disk/by-uuid/9913d333-cd8d-4960-8e3c-4af764b9a9ca";
			fsType = "btrfs";
			options = [ "subvol=@" "compress=zstd" ];
		};

		"/boot" = { # EFI
			device = "/dev/disk/by-uuid/8547-1299";
			fsType = "vfat";
			options = [ "fmask=0022" "dmask=0022" ];
		};
	};

	zramSwap = { # ZRAM
		enable = true;
		memoryPercent = 50;
		algorithm = "zstd";
	};
}
