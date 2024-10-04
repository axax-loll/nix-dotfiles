{ pkgs, inputs, ... }:
{
  imports = [
    ./binds.nix
    ./theme.nix
    ./lua.nix
    ./plugins.nix
    ./starship.nix
  ];
  programs.yazi = {
	  enable = true;
	  package = inputs.yazi.packages.${pkgs.system}.default;
    settings = {
      manager = {
        ratio = [ 1 4 4 ];
        show_hidden = false;
        sort_by = "natural";
        sort_dir_first = true;
        sort_reverse = false;
        linemode = "size";
        show_symlink = true;
      };
      preview = {
        wrap = "yes";
        image_filter = "lanczos3";
        image_quality = 85;
      };
      opener = {
        edit = [
	        { run = "hx $@"; block = true; }
        ];
        play = [
	        { run = "mpv $@"; orphan = true; }
        ];
        open = [
	        { run = "xdg-open $@"; }
        ];
      };
      open = {
        rules = [
          { mime = "text/*"; use = "edit"; }
          { mime = "video/*"; use = "play"; }
        ];
      };
    };
  };
}
