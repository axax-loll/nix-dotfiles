{ stdenv
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
stdenv.mkDerivation {
  name = "torrserver-134";
  src = fetchurl {
    url = http://example.org/libfoo-1.2.3.tar.bz2;
    sha256 = "0x2g1jqygyr5wiwg4ma1nd7w4ydpy82z9gkcv8vh2v8dn3y58v5m";
  };
}
