{ ... }:
{
  programs.yazi.keymap = {
    manager = {
      prepend_keymap = [
        { run = "plugin --sync smart-enter"; on = "l"; }
        { run  = "plugin --sync max-preview"; on = "O"; }
        { run  = "plugin --sync hide-preview"; on = "o"; }
      ];
    };
  };
}
