{ config, ... }:
{
  xdg.configFile = with config.lib.stylix.colors; {
    "swayimg/config".text = ''
      ################################################################################
      # General configuration
      ################################################################################
      [general]
      # Mode at startup (viewer/gallery)
      mode = viewer
      # Window position (parent or absolute coordinates, e.g. 100,200)
      position = parent
      # Window size (fullscreen/parent/image, or absolute size, e.g. 800,600)
      size = fullscreen
      # Action performed by SIGUSR1 signal (same format as for key bindings)
      sigusr1 = reload
      # Action performed by SIGUSR2 signal (same format as for key bindings)
      sigusr2 = next_file
      # Application ID and window class name
      app_id = swayimg
      
      ################################################################################
      # Viewer mode configuration
      ################################################################################
      [viewer]
      # Window background color (RGBA)
      window = #000000ff
      # Background for transparent images (grid/RGBA)
      transparency = grid
      # Default image scale (optimal/fit/width/height/fill/real)
      scale = optimal
      # Fix position of the image on the window surface (yes/no)
      fixed = yes
      # Anti-aliasing (yes/no)
      antialiasing = no
      # Run slideshow at startup (yes/no)
      slideshow = no
      # Slideshow image display time (seconds)
      slideshow_time = 3
      # Number of previously viewed images to store in cache
      history = 1
      # Number of preloaded images (read ahead)
      preload = 1
      
      ################################################################################
      # Gallery mode configuration
      ################################################################################
      [gallery]
      # Max size of the thumbnail (pixels)
      size = 200
      # Max number of thumbnails in cache, 0 to unlimit
      cache = 100
      # Fill the entire tile with thumbnail (yes/no)
      fill = yes
      # Use anti-aliasing for thumbnails (yes/no)
      antialiasing = yes
      # Background color of the window (RGBA)
      window = #${base00}ff
      # Background color of the tile (RGBA)
      background = #${base01}ff
      # Background color of the selected tile (RGBA)
      select = #${base02}ff
      # Border color of the selected tile (RGBA)
      border = #${base0E}ff
      # Shadow color of the selected tile (RGBA)
      shadow = #${base00}a0
      
      ################################################################################
      # Image list configuration
      ################################################################################
      [list]
      # Default order (none/alpha/reverse/random)
      order = alpha
      # Looping list of images (yes/no)
      loop = yes
      # Read directories recursively (yes/no)
      recursive = no
      # Open all files in the start directory (yes/no)
      all = yes
      
      ################################################################################
      # Font configuration
      ################################################################################
      [font]
      # Font name
      name = JetBrainsMono NerdFont
      # Font size (pt)
      size = 14
      # Font color (RGBA)
      color = #${base06}ff
      # Shadow color (RGBA)
      shadow = #${base00}a0
      
      ################################################################################
      # Image meta info scheme (format, size, EXIF, etc)
      ################################################################################
      [info]
      # Show on startup (yes/no)
      show = yes
      # Timeout to hide info (seconds, 0 to always show)
      info_timeout = 5
      # Timeout to hide status message (seconds)
      status_timeout = 3
      
      # Display scheme for viewer mode (position = content)
      [info.viewer]
      top_left = none
      top_right = index
      bottom_left = none
      bottom_right = none
      
      # Display scheme for gallery mode (position = content)
      [info.gallery]
      top_left = none
      top_right = index
      bottom_left = none
      bottom_right = none
      
      ################################################################################
      # Viewer mode key binding configuration: key = action [parameters]
      ################################################################################
      [keys.viewer]
      F1 = help
      Home = first_file
      g = first_file
      End = last_file
      Shift+g = last_file
      Prior = prev_file
      Next = next_file
      h = zoom +10
      j = next_file
      k = prev_file
      l = zoom -10
      Space = next_file
      Shift+d = prev_dir
      d = next_dir
      Shift+o = prev_frame
      o = next_frame
      c = skip_file
      Shift+s = slideshow
      s = animation
      f = fullscreen
      Return = mode
      Left = step_left 10
      Right = step_right 10
      Up = step_up 10
      Down = step_down 10
      Equal = zoom +10
      Plus = zoom +10
      Minus = zoom -10
      w = zoom width
      Shift+w = zoom height
      z = zoom fit
      Shift+z = zoom fill
      0 = zoom real
      BackSpace = zoom optimal
      bracketleft = rotate_left
      bracketright = rotate_right
      m = flip_vertical
      Shift+m = flip_horizontal
      a = antialiasing
      r = reload
      i = info
      Shift+Delete = exec rm "%"; skip_file
      Escape = exit
      q = exit
      # Mouse related
      ScrollLeft = step_right 5
      ScrollRight = step_left 5
      ScrollUp = step_up 5
      ScrollDown = step_down 5
      Ctrl+ScrollUp = zoom +10
      Ctrl+ScrollDown = zoom -10
      Shift+ScrollUp = prev_file
      Shift+ScrollDown = next_file
      Alt+ScrollUp = prev_frame
      Alt+ScrollDown = next_frame
      
      ################################################################################
      # Gallery mode key binding configuration: key = action [parameters]
      ################################################################################
      [keys.gallery]
      F1 = help
      
      Home = first_file
      g = first_file
      
      End = last_file
      Shift+g = last_file
      
      Left = step_left
      Right = step_right
      Up = step_up
      Down = step_down
      
      h = step_left
      j = step_down
      k = step_up
      l = step_right
      Prior = page_up
      Next = page_down
      
      c = skip_file
      f = fullscreen
      Return = mode
      a = antialiasing
      r = reload
      
      i = info
      Shift+Delete = exec rm "%"; skip_file
      Escape = exit
      q = exit
      # Mouse related
      ScrollLeft = step_right
      ScrollRight = step_left
      ScrollUp = step_up
      ScrollDown = step_down
    '';
  };
}