{ pkgs, config, lib, inputs, ... }:
{
	imports = [ "${inputs.nixos-hardware}/lenovo/thinkpad/t14/amd/gen1" ];
	hardware = {
		# BLUETOOTH
		bluetooth = {
			enable = true;
			powerOnBoot = true;
		};
		graphics = {
			enable = true;
			enable32Bit = true;
			extraPackages = with pkgs; [
				amdvlk
				# rocmPackages.clr.icd
				# vaapiVdpau
				# libvdpau-va-gl
			];
			extraPackages32 = with pkgs; [
				driversi686Linux.amdvlk
			];
		};
		system76.enableAll = true;
	};
}
