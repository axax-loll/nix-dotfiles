{ lib, fetchPypi, python3Packages, python3 }:

python3Packages.buildPythonApplication rec{
  pname = "anicli_api";
  version = "0.6.11";
  pyproject = true;

  src = fetchPypi {
    pname = "anicli_api";
    inherit version;
    hash = "sha256-1jfPl+Vh7c4zWjQJ/qdvFOhXBvVTX4iqShxoMtbN6j4=";
  };

  build-system = with python3Packages; [
    poetry-core
  ];

  dependencies = with python3Packages; [
    ( python3.withPackages ( ps: with ps; [ httpx ] ++ httpx.optional-dependencies.http2 ) )
    ( pkgs.callPackage ./chompjs.nix { } )
    attrs
    parsel
    tqdm
  ];
  
  dontCheckRuntimeDeps = true;
  
  meta = with lib; {
    description = "anicli-api";
    homepage = "https://github.com/vypivshiy/anicli-api"; # DEAD
    maintainers = with maintainers; [ DADA30000 azikx ];
    mainProgram = "anicli-api";
    platforms = platforms.unix;
  };
}
