{ pkgs, inputs, ... }: 
{
	home.packages = with pkgs; [
		home-manager
		
		vesktop
		tor-browser
		qbittorrent-enhanced
		
		xdg-user-dirs

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
		transmission_4-gtk

		trayscale
		
	 	inputs.ayugram-desktop.packages.${pkgs.system}.default
		(pkgs.callPackage ./custom-pkgs/anicliru/anicli-ru.nix { })
		# (pkgs.callPackage ./custom-pkgs/tgt/tgt.nix { })
	];
}
