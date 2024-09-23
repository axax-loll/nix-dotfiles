{
  lib,
  rustPlatform,
  fetchCrate,
  stdenv,
  darwin,
  nix-update-script,
  testers,
  tgt,
}:

rustPlatform.buildRustPackage rec {
  pname = "tgt";
  version = "1.0.0";

  src = fetchCrate {
    inherit pname version;
    hash = "sha256-ypuXkYW3RTWIm/FMojMkpEsLRnmT1GRiZbUpO+yB1XE=";
  };

  cargoHash = "sha256-uCdkayWOlwLBtMFPzscocHr2yP2OIVVSyz3m9B34STE=";

  buildInputs = lib.optionals stdenv.isDarwin [ darwin.apple_sdk.frameworks.AppKit ];

  passthru = {
    updateScript = nix-update-script;
    tests.version = testers.testVersion { package = tgt; };
  };

  meta = {
    description = "TUI client for Telegram";
    homepage = "https://crates.io/crates/tgt";
    changelog = "https://github.com/FedericoBruzzone/tgt/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ azikx ];
    mainProgram = "tgt";
  };
}
