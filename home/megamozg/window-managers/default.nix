{ pkgs, inputs, ... }:
{
	imports = [
		./hyprland
		# ./swayfx
		./terminals
		./misc
	];
	home.packages = with pkgs; [
		hyprcursor
		# swayfx
		
		kitty
		
		swaybg
		swaynotificationcenter
		
		nwg-drawer
		inputs.anyrun.packages."x86_64-linux".anyrun 
		
		grimblast
		wf-recorder

		light
		# swaylock
		fprintd
		grimblast
		wl-clipboard
		hyprpicker
	];
}
