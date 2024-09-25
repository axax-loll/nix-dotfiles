{ lib, pkgs, rustPlatform, ... }:

rustPlatform.buildRustPackage rec {
  pname = "tgt";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "FedericoBruzzone";
    repo = "${pname}";
  };

  buildFeatures = [ "download-tdlib" ];
  native

  meta = {
    description = "TUI client for Telegram";
    homepage = "https://crates.io/crates/tgt";
    changelog = "https://github.com/FedericoBruzzone/tgt/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ azikx ];
    mainProgram = "tgt";
  };
}
