{ pkgs, ... }:
{
  xdg.configFile = {
    "joshuto/previewer.sh" = {
      executable = true;
      source = let
        previewFile = pkgs.fetchFromGitHub {
          "owner" = "kamiyaa";
          "repo" = "joshuto";
          "rev" = "9728c35ef7058bc4919765f720d4f5b9bdb17da1";
          "hash" = "sha256-k5/p9C+zvYCa7dSl6wAKojUsUnAHo7ovVlqTyAwaTn0=";
        }; 
        in "${previewFile}/config/preview_file.sh";
    };
  };
}
