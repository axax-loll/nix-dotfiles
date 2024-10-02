{ pkgs, chaotic, ... }:
{
	# BOOT PARAMETERS
	boot = {
		consoleLogLevel = 0;
		kernelPackages = pkgs.linuxPackages_xanmod_latest;
		kernelModules = [ "kvm-amd" ];
		extraModulePackages = [ ];
		kernelParams = [
			"quiet"
			"loglevel=3"
			"rd.systemd.show_status=false"
		];
		
		loader = {
			systemd-boot = {
				enable = true;
				configurationLimit = 4;
			};
			efi.canTouchEfiVariables = true;
			timeout = 0;
		};

		initrd = {
			kernelModules = [ ];
			availableKernelModules = [
				"xhci_pci"
				"ahci"
				"usbhid"
				"usb_storage"
				"sd_mod"
			];
			systemd.enable = true;
			kernelModules = [ ];
		};
		tmp.cleanOnBoot = true;
	};
}
