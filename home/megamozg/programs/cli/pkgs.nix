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
		nix-prefetch-github
		
		nvtopPackages.amd
		btop

		bluetuith
		confetty
		tenki
		light

		# trash-cli
		trashy
		fuc
		zip
		atool

		ffmpegthumbnailer
		p7zip
		jq
		poppler_min
		imagemagick
		glow
		ouch
		
		# ferium
		# portablemc
		];
}
