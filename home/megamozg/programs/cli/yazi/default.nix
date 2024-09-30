{ pkgs, inputs, ... }:
{
  programs.yazi = {
	  enable = true;
	  package = yazi.packages.${pkgs.system}.default;
    settings = {
      manager = {
        ratio = [ 1 4 4 ];
        show_hidden = false;
        sort_by = "natural";
        sort_dir_first = true;
        sort_reverse = false;
        linemode = "size";
        show_symlink = "true";
      };
      preview = {
        wrap = "yes";
        image_filter = "lanczos3";
        image_quality = 85;
      };
      opener = {
        edit = [
	        { run = "nvim '$@'"; block = true; for = "unix"; }
        ];
        play = [
	        { run = "mpv '$@'"; orphan = true; for = "unix" }
        ];
        open = [
	        { run = "xdg-open '$@'"; desc = "Open" }
        ];
      };
      open = {
        rules = [
          { mime = "text/*"; use = "edit" }
          { mime = "video/*"; use = "play" }
        ];
      };
    };
  };
}
