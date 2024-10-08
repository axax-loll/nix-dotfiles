{ pkgs, inputs, config, ... }: 
{
	imports = [
		inputs.nur.hmModules.nur
	];
	home.packages = with pkgs; [
		home-manager
		
		vesktop
		tor-browser
		qbittorrent-enhanced
		
		xdg-user-dirs
		libreoffice-fresh
		onlyoffice-bin

		nemo-with-extensions
		nemo-fileroller
		nemo-emblems
		gvfs
		
		obsidian
		inkscape
		
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

		# (vivaldi.override {
		# 	isSnapshot = true;
		# })

		(prismlauncher.override {
			jdks = [
				temurin-bin-21
				temurin-bin-17
				temurin-bin-8
			];
		})

		trayscale
		
		(nerdfonts.override {
			fonts = [
				"FiraCode"
				"JetBrainsMono"
			];
		})
		
		config.nur.repos.abszero.palgen
	 	inputs.ayugram-desktop.packages.${pkgs.system}.default
	];
}
