{ pkgs, inputs, ... }:
{
	imports = [
		./hyprland
		./swayfx
		./terminals
		./misc
	];
	home.packages = with pkgs; [
		hyprcursor
		swayfx
		
		kitty
		
		swaybg
		swaynotificationcenter
		mako
		
		nwg-drawer
		inputs.anyrun.packages."x86_64-linux".anyrun 
		
		grimblast
		# sway-contrib.grimshot
		wf-recorder

		light
		# swaylock
		fprintd
		wl-clipboard
		hyprpicker
	];
}
