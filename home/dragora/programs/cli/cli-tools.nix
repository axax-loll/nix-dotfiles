{ pkgs, ... }:
{
	home.packages = with pkgs; [
		yazi
		joshuto
		
		bat
		
		git
		cava
		lutgen
		openvpn
		
		micro
		helix
		
		zoxide
		starship
		fastfetch
		pulsemixer
	];
}
