{ config, lib, inputs, ... }:
{
	imports = [ "${inputs.nixos-hardware}/lenovo/thinkpad/t14/amd/gen1" ];
	hardware = {
		# BLUETOOTH
		bluetooth = {
			enable = true;
			powerOnBoot = true;
		};
	};
}
