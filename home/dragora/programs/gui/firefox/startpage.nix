{ pkgs, ... }:
{
	# WALLAPAPER IN FIREFOX HOME
	home.file.".mozilla/firefox/dragora/chrome/img/synth.png".source = pkgs.fetchurl {
		url = "https://github.com/axax-loll/fuji-wallpapers/blob/main/synth.png?raw=true";
		hash = "sha256-HbrF1pezqFRBfmPTlHv6DubWxJ3xq83cznCoQgnYKIs=";
	};

	# LOGO IN HOME
	home.file.".mozilla/firefox/dragora/chrome/img/logo.png".source = pkgs.fetchurl {
		url = "https://static-00.iconduck.com/assets.00/nixos-icon-2048x1776-8czr8nir.png";
		hash = "sha256-GX9Zv+Pf3BdrdvtqJ1PlnW+gkAMuC9H8YCq05sDmWMI=";
	};
}
