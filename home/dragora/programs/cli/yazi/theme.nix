{ lib, ... }:
{
  programs.yazi.theme = lib.mkForce {
    manager = {
      cwd = { fg = "green"; };
      
      hovered = { fg = "black"; bg = "blue"; bold = true; };
      preview_hovered = { underline = true; };

      tab_active = { fg = "red"; bg = "black"; };
      tab_inactive = { fg = "black"; bg = "white"; };

      border_style = { fg = "black"; };

      marker_selected = { bg = "cyan"; };
      marker_copied = { bg = "green"; };
      marker_cut = { bg = "yellow"; };
    };
    which = {
      cols = 1;
      mask = { bg = "grey"; };
    };
    filetype = {
      rules = [
        { mime = "image/*"; fg = "green"; }
        { mime = "video/*"; fg = "red"; }
        { mime = "audio/*"; fg = "yellow"; }

      	{ mime = "application/zip"; fg = "cyan"; }
	      { mime = "application/gzip"; fg = "cyan"; }
	      { mime = "application/x-tar"; fg = "cyan"; }
	      { mime = "application/x-bzip"; fg = "cyan"; }
	      { mime = "application/x-bzip2"; fg = "cyan"; }
	      { mime = "application/x-7z-compressed"; fg = "cyan"; }
	      { mime = "application/x-rar"; fg = "cyan"; }

        { name = "*"; fg = "white"; }
        { name = "*/"; fg = "white"; }
      ];
    };
  };
}
