{ pkgs, ... }:
{
	# BOOT PARAMETERS
	boot = { # ITSELF LOL
		kernelPackages = pkgs.linuxPackages_xanmod_latest;
		kernelModules = [ "kvm-amd" ];
		consoleLogLevel = 0;
		kernelParams = [ 
			"quiet"
			"loglevel=3"
			"nowatchdog"
			"page_alloc.shuffle=1"
			"threadirqs"
			"split_lock_detect=off"
			"pci=pcie_bus_perf"
			"psmouse.synaptics_intertouch=0"
			"rd.systemd.show_status=false"
			"amdgpu.gttsize=2000"
		];
		
		loader = { # SYSTEMD BOOT AS DEFAULT
			systemd-boot = {
				enable = true;
				configurationLimit = 4;
			};
			efi.canTouchEfiVariables = true;
			timeout = 0;
		};
		
		initrd = { # IDK
			availableKernelModules = [
				"nvme"
				"xhci_pci"
				"ahci"
				"ohci_pci"
				"ehci_pci"
				"pata_atiixp"
				"ums_realtek"
				"sd_mod"
				"sr_mod"
				"sdhci_pci"
				"usb_storage"
			];
			systemd.enable = true;
			compressor = "zstd";
			compressorArgs = [ "-9" ];
			verbose = false;
		};

		plymouth = { # PLYMOUTH WITH NIXOS LOGO
			enable = true;
			logo = "${pkgs.nixos-icons}/share/icons/hicolor/48x48/apps/nix-snowflake-white.png";
		};
		
		tmp.cleanOnBoot = true;
	};
}
