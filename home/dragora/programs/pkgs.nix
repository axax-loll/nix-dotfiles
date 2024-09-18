{ pkgs, inputs, ... }: 
{
	home.packages = with pkgs; [
		home-manager

		vivaldi
		# spotify
		vesktop
		
		qbittorrent-enhanced
		openvpn
		uget
		
		xdg-user-dirs
		libreoffice-fresh

		nemo-with-extensions
		nemo-fileroller
		nemo-emblems
		gvfs
		folder-color-switcher
		
		obs-studio
		obsidian
		
		popsicle
		ventoy

		swayimg
		anime4k
		
		blockbench
		bottles
		mindustry-wayland
		
		(prismlauncher.override {
			jdks = [
				temurin-bin-21
				temurin-bin-17
				temurin-bin-8
			];
		})

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
