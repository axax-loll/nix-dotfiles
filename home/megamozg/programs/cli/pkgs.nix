{ pkgs, ... }:
{
	home.packages = with pkgs; [
		yazi
		joshuto
		
		bat
		fzf
		
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
		light

		trash-cli
		inxi

		ferium
		portablemc
		];
}
