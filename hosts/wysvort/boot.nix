{ pkgs, ... }:
{
	# BOOT PARAMETERS
	boot = {
		kernelPackages = pkgs.linuxPackages_xanmod_latest;
		kernelModules = [ "kvm-amd" ];
		kernelParams = [ 
			"quiet"
			"loglevel=3"
			"nowatchdog"
			"page_alloc.shuffle=1"
			"threadirqs"
			"split_lock_detect=off"
			"pci=pcie_bus_perf"
			"psmouse.synaptics_intertouch=0"
		];
		
		loader = {
			systemd-boot = {
				enable = true;
				configurationLimit = 20;
			};
			efi.canTouchEfiVariables = true;
			timeout = 0;
		};
		
		initrd = {
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
		};
		tmp.cleanOnBoot = true;
	};
}
