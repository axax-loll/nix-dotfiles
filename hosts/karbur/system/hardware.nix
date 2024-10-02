{ config, lib, ... }:
{
	hardware = {
		# AND VIDEOCARD DRIVE (maybe)
		amdgpu = {
			# opencl.enable = true;
			amdvlk = {
				enable = true;
				supportExperimental.enable = true;
				support32Bit.enable = true;
			};
		};
		# OPENGL
		graphics = {
			enable = true;
			enable32Bit = true;
		};
		# PROCCESOR
		cpu.amd = {
			updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
			ryzen-smu.enable = true;
		};
		# BLUETOOTH
		bluetooth = {
			enable = true;
			powerOnBoot = true;
		};
	};
}
