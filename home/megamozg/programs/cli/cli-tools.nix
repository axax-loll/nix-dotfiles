{ pkgs, ... }:
{
	home.packages = with pkgs; [
		yazi
		joshuto
		
		bat
		
		cava
		lutgen
		
		micro
		helix
		
		zoxide
		starship
		fastfetch
		pulsemixer
	];
}
