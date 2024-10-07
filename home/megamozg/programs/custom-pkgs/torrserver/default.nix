{ lib, stdenv, fetchurl, autoPatchelfHook }:
let
	version = "134";
	hash = "sha256-WDygG9aGnD20nGxtG0t+T2KEwbJ+fZ0uRaCndirrsXI=";
in
stdenv.mkDerivation {
	name = "torrserver";
	dontUnpack = true;

	src = fetchurl {
		url = "https://github.com/YouROK/TorrServer/releases/download/MatriX.${version}/TorrServer-linux-amd64";
		sha256 = "${hash}";
	};

	nativeBuildInputs = [ autoPatchelfHook ];

	installPhase = ''
		mkdir -p $out/bin
		cp $src $out/bin/torrserver
		chmod +x $out/bin/torrserver
	'';

	meta = with lib; {
		description    = "Torrserver";
		homepage       = "https://github.com/yt-dlp/yt-dlp";
		license        = licenses.unlicense;
		meta.platforms = platforms.all;
		mainProgram    = "torrserver";
	};
}
