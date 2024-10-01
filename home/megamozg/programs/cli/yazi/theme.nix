{ ... }:
{
  programs.yazi.theme = {
    filetype = {
      rules = [
        { mime = "image/*"; fg = "green"; }
        { mime = "{audio,video}/*"; fg = "yellow"; }
        { mime = "application/x-bzip"; fg = "" }
        { mime = "application/{odt,pdf,doc,docx,rtf,vnd.*}"; fg = "cyan"; }
        { name = "*"; is = "orphan"; bg = "red"; }
        { name = "*"; is = "exec"; bg = "green"; }
      	{ name = "*"; is = "dummy"; bg = "red"; }
        { name = "*/"; is = "dummy"; bg = "red"; }
        { name = "*/"; fg = "blue"; }
      ];
      dirs  = [
	      { name = ".config"; text = "" }
	      { name = ".git"; text = "" }
	      { name = "Desktop"; text = "" }
	      { name = "Development"; text = "" }
	      { name = "Documents"; text = "" }
	      { name = "Downloads"; text = "" }
	      { name = "Library"; text = "" }
	      { name = "Movies"; text = "" }
	      { name = "Music"; text = "" }
	      { name = "Pictures"; text = "" }
	      { name = "Public"; text = "" }
	      { name = "Videos"; text = "" }
      ];
    };
  };
}
