{ ... }:
{
  xdg.configFile = {
    "qt5ct/colors/paradise.conf".text = ''
	  [ColorScheme]
	    active_colors=#ffe8e3e3, #ff1f1f1f, #ff1f1f1f, #ff151515, #ff424242, #ff6e738d, #ffe8e3e3, #ffe8e3e3, #ffe8e3e3, #ff151515, #ff1f1f1f, #ff151515, #ff2e2e2e, #ffbbb6b6, #ff8c977d, #ffed8796, #ff151515, #ffe8e3e3, #ff181926, #ffe8e3e3, #80151515
	    disabled_colors=#ff808080, #ff1f1f1f, #ff1f1f1f, #ff151515, #ff424242, #ff6e738d, #ff808080, #ffe8e3e3, #ff808080, #ff151515, #ff1f1f1f, #ff151515, #ff2e2e2e, #ff808080, #ff8c977d, #ffed8796, #ff151515, #ffe8e3e3, #ff181926, #ffe8e3e3, #80151515
	    inactive_colors=#ffe8e3e3, #ff1f1f1f, #ff1f1f1f, #ff151515, #ff424242, #ff6e738d, #ffe8e3e3, #ffe8e3e3, #ffe8e3e3, #ff151515, #ff1f1f1f, #ff151515, #ff2e2e2e, #ffbbb6b6, #ff8c977d, #ffed8796, #ff151515, #ffe8e3e3, #ff181926, #ffe8e3e3, #80151515
    '';
    "qt5ct/qt5ct.conf".text = ''
      [Appearance]
        color_scheme_path=/home/megamozg/.config/qt5ct/colors/paradise.conf
        custom_palette=true
        icon_theme=Papirus-Dark
        standard_dialogs=default
        style=Fusion

      [Fonts]
        fixed="JetBrainsMono Nerd Font Mono,12,-1,5,50,0,0,0,0,0,Regular"
        general="JetBrainsMono Nerd Font,12,-1,5,50,0,0,0,0,0,Regular"

      [Interface]
        activate_item_on_single_click=1
        buttonbox_layout=0
        cursor_flash_time=1000
        dialog_buttons_have_icons=1
        double_click_interval=400
        gui_effects=@Invalid()
        keyboard_scheme=2
        menus_have_icons=true
        show_shortcuts_in_context_menus=true
        stylesheets=@Invalid()
        toolbutton_style=4
        underline_shortcut=1
        wheel_scroll_lines=3

      [PaletteEditor]
        geometry=@ByteArray(\x1\xd9\xd0\xcb\0\x3\0\0\0\0\0\0\0\0\0\0\0\0\x2v\0\0\x2\x10\0\0\0\0\0\0\0\0\0\0\x2v\0\0\x2\x10\0\0\0\0\x2\0\0\0\a\x80\0\0\0\0\0\0\0\0\0\0\x2v\0\0\x2\x10)

      [SettingsWindow]
        geometry=@ByteArray(\x1\xd9\xd0\xcb\0\x3\0\0\0\0\0\0\0\0\0\0\0\0\x3\xad\0\0\x3\xf5\0\0\0\0\0\0\0\0\0\0\x3\xbf\0\0\x4\v\0\0\0\0\x2\0\0\0\a\x80\0\0\0\0\0\0\0\0\0\0\x3\xad\0\0\x3\xf5)

      [Troubleshooting]
        force_raster_widgets=1
        ignored_applications=@Invalid()
    '';
  };
}
