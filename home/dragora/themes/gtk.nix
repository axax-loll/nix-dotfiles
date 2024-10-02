{ pkgs, lib, ... }:
{
	home.packages = with pkgs; [
		adw-gtk3
		google-cursor
		papirus-folders
		papirus-icon-theme

		noto-fonts
		noto-fonts-cjk
		openmoji-color
		
		(nerdfonts.override { fonts = [ "FiraCode" "JetBrainsMono" ]; })
	];
	gtk = {
		enable = true;
		iconTheme = {
			name = "white";
			package = pkgs.papirus-folders;
		};
		font = lib.mkForce {
			name = "JetBrainsMono NerdFont";
			package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
			size = 12;
		};
	};
	# fonts.fontconfig = {
	# 	enable = true;
	# 	defaultFonts.emoji = [ "OpenMoji Color" ];
	# };
}
