{ pkgs, ... }:
{
	# WALLAPAPER IN FIREFOX HOME
	home.file.".mozilla/firefox/dragora/chrome/img/wall.jpg".source = pkgs.fetchurl {
		url = "https://img3.wallspic.com/previews/2/3/9/2/7/172932/172932-synthwave-art-atmosphere-world-orange-x750.jpg";
		hash = "sha256-NCM7Fbfb9TEZ7EM059P7mYJr1ZOgDEOayZN5r4dIkPo=";
	};

	# LOGO IN HOME
	home.file.".mozilla/firefox/dragora/chrome/img/logo.png".source = pkgs.fetchurl {
		url = "https://static-00.iconduck.com/assets.00/nixos-icon-2048x1776-8czr8nir.png";
		hash = "sha256-lAtBqdaqnjnMv/PSyrGBcrb3eNtX4Bk4MLYwnZntMio=";
	};
}
