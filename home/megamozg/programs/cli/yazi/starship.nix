{ config, ... }:
{
  xdg.configFile = with config.lib.stylix.colors; {
    "yazi/star.toml".text = ''
      format = """
        $hostname\
        $username\
        $directory\
      """

      [username]
      format = '[$user@]($style)'
      style = 'bold fg:green'
      disabled = false

      [hostname]
      format = '[$hostname]($style)'
      style = 'bold fg:green'
      disabled = false
  
      [directory]
      style = "fg:cyan"
      format = "[ $path ]($style)"
      truncation_length = 3
      truncation_symbol = "…/"
      read_only = '[󰌾]'
      read_only_style = 'bold fg:red'
      
      [directory.substitutions]
      "Documents" = "󰈙 "
      "Downloads" = " "
      "Music" = " "
      "Pictures" = " "
    '';
  };
}
