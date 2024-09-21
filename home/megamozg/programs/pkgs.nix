{ pkgs, inputs, ... }: 
{
	home.packages = with pkgs; [
		home-manager
		
		vesktop
		
		qbittorrent-enhanced
		openvpn
		
		xdg-user-dirs
		libreoffice-fresh

		nemo-with-extensions
		nemo-fileroller
		nemo-emblems
		gvfs
		
		obs-studio
		obsidian
		
		popsicle
		ventoy

		swayimg
		anime4k
		
		(nerdfonts.override {
			fonts = [
				"FiraCode"
				"JetBrainsMono"
			];
		})

	 	inputs.ayugram-desktop.packages.${pkgs.system}.default
		(pkgs.callPackage ./custom-pkgs/anicliru/anicli-ru.nix { })
	];
}