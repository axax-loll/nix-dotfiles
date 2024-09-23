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

		openvpn
		nix-tree
		
		nvtopPackages.amd
		btop
		
		bluetuith
		ytfzf
		rustmission
		tty-clock
		confetty
		tenki

		trash-cli
	];
}
