{ ... }:
{
  programs.joshuto.mimetype = {
    class = {
      audio_default = [
        { command = "mpv"; args = [ "--" ] };
      ];
      image_default = [
        { command = "swayimg"; args = [ "-f --" ] };
      ];
      text_default = [
        { command = "hx"; silent = true };
      ];
      libreoffice_default = [
        { command = "libreoffice"; fork = true; silent = true }
      ];
    };

    mimetype = {
      text = [ {inherit = "text_default"}; ];
    };
  };
}
