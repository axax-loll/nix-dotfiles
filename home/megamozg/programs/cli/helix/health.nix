{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nil
    marksman
    markdown-oxide
    yaml-language-server
    vscode-langservers-extracted
    # bash-language-server
    rust-analyzer
    python312Packages.python-lsp-server
    lua-language-server
    taplo
  ];
}
