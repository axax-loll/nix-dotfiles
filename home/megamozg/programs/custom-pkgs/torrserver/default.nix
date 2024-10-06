{ 
  stdenv
, lib
, go
, pkgs
, buildGoModule
, fetchYarnDeps
, mkYarnPackage
, fetchFromGitHub
, fetchurl
, nixosTests
}:

buildGoModule rec {
  pname = "torrserver";
  version = "121";
  src = fetchFromGitHub {
    owner = "YouROK";
    repo = "TorrServer";
    rev = "MatriX.${version}";
    sha256 = "sha256-xFUebXoGSqao7PDGNqk8jfkp64WHlJOBQtp7wsyw5Mc=";
  };
  vendorHash = null;

  buildPhase = ''
    bash $src/build-all.sh
    go mod vendor
  '';

  doCheck = false;

  meta = with lib; {
    description = "Torrent stream server";
    homepage = "https://github.com/YouROK/TorrServer";
    license = licenses.gpl3;
    platforms = platforms.linux;
  };
}
