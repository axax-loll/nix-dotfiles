{ config, pkgs, ... }:
let
	# helios | saga | decaf | google-dark |
	# gruvbox-material-dark-hard | mountain |
	# rose-pine | tokyodark | vesper | tomorrow-night |
	theme = "mountain";
in
{
	stylix = {
		image = ../walls/paradise.png;
		base16Scheme = "${pkgs.base16-schemes}/share/themes/${theme}.yaml";
	};
}
