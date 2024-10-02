{ lib, pkgs, rustPlatform, ... }: rustPlatform.buildRustPackage rec {
  pname = "tgt";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "FedericoBruzzone";
    repo = "${pname}";
    rev = "0d30106e34c7fd0ead4f788d62b6b1dc507b6a02";
    hash = "sha256-VQ8JNtLT+UMTAkek9pJ8fqXUW+E6s4XGwJ9rwqwASIQ=";
  };

  # LD_LIBRARY_PATH = lib.makeLibraryPath [ pkgs.tdlib ];
  RUST_BACKTRACE = 1;
  LOCAL_TDLIB_PATH = "${pkgs.tdlib}/lib";
  # buildFeatures = [ "local-tdlib" ];

  nativeBuildInputs = with pkgs; [ pkg-config openssl tdlib ];
  buildInputs = with pkgs; [ pkg-config openssl tdlib ];

  cargoHash = "sha256-O3KTYHe8f2ij2FV5gH4myafPzkgA/1sX90GYO/GxUbE=";

  meta = with lib; {
    description = "Terminal client for Telegram";
    homepage = "https://github.com/FedericoBruzzone/tgt";
    changelog = "https://github.com/FedericoBruzzone/tgt/releases/tag/v${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ somokill azikx ];
    main_program = "tgt";
  };
}
