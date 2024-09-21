{ lib
, rustPlatform
, fetchFromGitHub
, installShellFiles
, stdenv
, darwin
}:

rustPlatform.buildRustPackage rec {
  pname = "tgt";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "FedericoBruzzone";
    repo = "tgt";
    rev = "v${version}";
  };

  meta = with lib; {
    description = "tui telegram client";
    homepage = "https://github.com/kamiyaa/joshuto";
    changelog = "https://github.com/FedericoBruzzone/tgt/releases/tag/${src.rev}";
    license = licenses.mit;
    maintainers = with maintainers; [ azikx ];
    mainProgram = "tgt_telegram";
  };
}
