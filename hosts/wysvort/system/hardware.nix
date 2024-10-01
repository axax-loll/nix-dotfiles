{ pkgs, config, lib, inputs, ... }:
{
	imports = [ "${inputs.nixos-hardware}/lenovo/thinkpad/t14/amd/gen1" ];
	hardware = {
		bluetooth = { # BT
			enable = true;
			powerOnBoot = true;
		};
		graphics = { # GPU
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
		firmware = [ pkgs.linux-firmware ];
	};
}
