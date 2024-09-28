{ pkgs, inputs, ... }: 
{
	home.packages = with pkgs; [
		home-manager
		
		tuba
		amberol
		cassette
		vesktop
		qbittorrent-enhanced
		
		xdg-user-dirs
		libreoffice-fresh
		onlyoffice-bin

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

		bottles
		# "wineWow64Packages.staging"
		mindustry-wayland
		mangohud
		superTuxKart
		transmission_4-gtk

		trayscale
		
		(nerdfonts.override {
			fonts = [
				"FiraCode"
				"JetBrainsMono"
			];
		})

	 	inputs.ayugram-desktop.packages.${pkgs.system}.default
		(pkgs.callPackage ./custom-pkgs/anicliru/anicli-ru.nix { })
		# (pkgs.callPackage ./custom-pkgs/tgt/tgt.nix { })
	];
}
