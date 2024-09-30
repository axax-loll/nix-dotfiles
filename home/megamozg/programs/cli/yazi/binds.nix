{ ... }:
{
  programs.yazi.keymap = {
    input.keymap = [
      { exec = "close"; on = [ "" ]; }
      { exec = "close --submit"; on = [ "" ]; }
      { exec = "escape"; on = [ "" ]; }
      { exec = "backspace"; on = [ "" ]; }
    ];
    manager.keymap = [
      { exec = "escape"; on = [ "" ]; }
      { exec = "quit"; on = [ "q" ]; }
      { exec = "close"; on = [ "" ]; }
    ];
  };
}
