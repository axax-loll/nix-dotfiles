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
        tab_size = 1;
        image_filter = "lanczos3";
        image_quality = 90;
        max_height = 1000;
        max_width = 1000;
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
          { mime = "audio/*"; use = "play"; }
          { mime = "image/*"; use = "open"; }
        ];
      };
      plugin = {
		    prepend_previewers = [
			    { mime = "application/*zip"; run = "ouch"; }
			    { mime = "application/x-tar"; run = "ouch"; }
			    { mime = "application/x-bzip2"; run = "ouch"; }
			    { mime = "application/x-7z-compressed"; run = "ouch"; }
			    { mime = "application/x-rar"; run = "ouch"; }
			    { mime = "application/x-xz"; run = "ouch"; }

          { name = "*.md"; run = "glow"; }
        ];
      };
    };
  };
}
