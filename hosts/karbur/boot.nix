{ pkgs, chaotic, ... }:
{
	# BOOT PARAMETERS
	boot = {
		kernelPackages = pkgs.linuxPackages_cachyos;
		kernelModules = [ "kvm-amd" ];
		extraModulePackages = [ ];
		
		loader.systemd-boot.enable = true;
		loader.efi.canTouchEfiVariables = true;
		
		initrd.availableKernelModules = [ "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
		initrd.kernelModules = [ ];
	};
}
