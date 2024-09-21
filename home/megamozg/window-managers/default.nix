{ pkgs, inputs, ... }:
{
	imports = [
		./hyprland
		# ./swayfx
		./terminals
	];
	home.packages = with pkgs; [
		hyprcursor
		# swayfx
		
		kitty
		
		swaybg
		mako
		swaynotificationcenter
		
		nwg-drawer
		inputs.anyrun.packages."x86_64-linux".anyrun 
		
		grimblast
		wf-recorder
	];
}
