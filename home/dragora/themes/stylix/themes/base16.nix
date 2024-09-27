{ config, pkgs, ... }:
let
	wp = "https://github.com/axax-loll/nix-wallpapers/blob/main";
	# helios | saga | decaf | google-dark |
	# gruvbox-material-dark-hard | mountain |
	# rose-pine | tokyodark | vesper | tomorrow-night |
	# horizon-terminal-dark
	theme = "gruvbox-material-dark-hard";
in
{
	stylix = {
		image = pkgs.fetchurl {
			url = "${wp}/gruvbox/urban.jpg?raw=true";
			sha256 = "sha256-L3BRtwDjJG1yUo6GZqJxD4lCPTJ+yUPBlW/QaaIa2ns=";
		};
		base16Scheme = "${pkgs.base16-schemes}/share/themes/${theme}.yaml";
	};
}
