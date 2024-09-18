{ config, lib, ... }:
{
	hardware = {
		amdgpu = {
			# opencl.enable = true;
			amdvlk = {
				enable = true;
				supportExperimental.enable = true;
				support32Bit.enable = true;
			};
		};
		graphics = {
			enable = true;
			enable32Bit = true;
		};
		cpu.amd = {
			updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
			ryzen-smu.enable = true;
		};
		bluetooth = {
			enable = true;
			powerOnBoot = true;
		};
	};
}
