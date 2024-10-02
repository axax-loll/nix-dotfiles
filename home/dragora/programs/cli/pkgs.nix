{ pkgs, yazi, ... }:
{
	home.packages = with pkgs; [
		bat
		fzf
		
		cava
		lutgen
		
		micro
		helix

		inxi
		zoxide
		starship
		fastfetch
		cpufetch
		pulsemixer

		openvpn
		nix-tree
		nix-prefetch-github
		
		nvtopPackages.amd
		btop

		bluetuith
		tenki

		# trash-cli
		trashy
		fuc

		# ferium
		# portablemc
		];
}
