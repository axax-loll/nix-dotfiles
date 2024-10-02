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
		
		kitty
		
		swaybg
		swaynotificationcenter
		mako
		
		nwg-drawer
		
		grimblast
		wf-recorder

		wl-clipboard
		hyprpicker
	];
}
