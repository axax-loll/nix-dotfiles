{ config, ... }:
{
  xdg.configFile = with config.lib.stylix.colors; {
    "yazi/star.toml".text = ''
      # format = """
      #   $hostname\
      #   $username\
      #   $directory\
      # """

      format = """
        $directory\
        $git_branch\
        $git_status\
        $git_metrics\
      """
      
      [directory]
      style = "bold fg:green"
      format = "in [$path ]($style)"
      truncation_length = 3
      truncation_symbol = "…/"
      read_only = '[󰌾]'
      read_only_style = 'bold fg:red'

      [git_branch]
      style = "bold fg:yellow"

      [git_status]
      style = "bold fg:red"

      [git_metrics]
      added_style = "bold fg:blue"
      deleted_style = "bold fg:red"
      
      [directory.substitutions]
      "Documents" = "󰈙 "
      "Downloads" = " "
      "Music" = " "
      "Pictures" = " "
    '';
  };
}
