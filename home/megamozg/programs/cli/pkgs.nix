{ pkgs, yazi, ... }:
{
	home.packages = with pkgs; [
		fff
		joshuto
		
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
		
		nvtopPackages.amd
		btop
		
		bluetuith
		confetty
		tenki
		light

		# trash-cli
		trashy
		fuc

		# ferium
		# portablemc
		];
}
