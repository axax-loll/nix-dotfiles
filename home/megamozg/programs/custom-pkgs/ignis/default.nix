{ lib, stdenv, fetchurl, autoPatchelfHook }:
let
	version = "0.2";
	hash = "sha256-WDygG9aGnD20nGxtG0t+T2KEwbJ+fZ0uRaCndirrsXI=";
in
stdenv.mkDerivation {
	name = "ignis";
	# dontUnpack = true;

	src = fetchurl {
		url = "https://github.com/linkfrg/ignis/releases/download/v${version}/ignis-v${version}.tar.gz";
		sha256 = "${hash}";
	};

	nativeBuildInputs = [ autoPatchelfHook ];

	installPhase = ''
		mkdir -p $out/bin
		cp $src $out/bin/ignis
		chmod +x $out/bin/ignis
	'';

	meta = with lib; {
		description    = "Ignis";
		homepage       = "https://github.com/yt-dlp/yt-dlp";
		license        = licenses.unlicense;
		meta.platforms = platforms.all;
		mainProgram    = "ignis";
	};
}
