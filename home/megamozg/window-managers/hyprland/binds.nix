{ pkgs, config, ... }:
{
	wayland.windowManager.hyprland.settings = {
		# SHORTCUTS
		"$m" = "SUPER";
		"$s" = "SHIFT";
		"$a" = "ALT";
		"$c" = "CTRL";

		"$rt" = "RETURN";
		"$sp" = "SPACE";
		"$tb" = "TAB";
		
		"$nx" = "Next";
		"$pr" = "Prior";
		"$p" = "Print";

		"$md" = "mouse_down";
		"$mu" = "mouse_up";

		# MOUSE
		bindm = [
			"$m, mouse:272, movewindow"
			"$m, mouse:273, resizewindow"
			"$m  $s, mouse:273, resizewindow 1"
		];

		# KEYBOARD
		bind = [
			# BUILTIN COMMANDS
			"$m, $sp, togglefloating"
			"$m  $s, $sp, hyprexpo:expo, toggle"
			"$m, Q, killactive"
			"$m, C, centerwindow"
			"$m, F, fullscreen"
			"$m, X, pseudo"
			"$m, P, pin"
			
			"$m, O, cyclenext"
			"$m  $s, O, swapnext "
			
			"$m, G, togglegroup"
			"$m  $s, G, changegroupactive"
			"$m  $a, G, moveoutofgroup"
			
			"$m, D, togglespecialworkspace, extra"
			"$m  $s, D, movetoworkspace, special:extra"
			
			"$m, S, togglespecialworkspace, magic"
			"$m  $s, S, movetoworkspace, special:magic"

			"$m, $md, workspace, e+1"
			"$m, $mu, workspace, e-1"
			
			# PROGRAMS
			"$m, $rt, exec, kitty -T Terminal"
			"$m  $s, $rt, exec, kitty --class=termfloat -T Terminal"
			
			"$m, $tb, exec, nwg-drawer -ovl -nocats -nofs -d -c 7 -mb -49"
			"$m  $s, $tb, exec, anyrun"
			
			"$m, V, exec, ayugram-desktop"
			"$m  $s, V, exec, vesktop"
			
			"$m, B, exec, firefox"
			"$m  $s, B, exec, chromium"
			
			"$m, N, exec, kitty -T Explorer joshuto"
			"$m  $s, N, exec, kitty --class=tfm -T Explorer joshuto"
			"$m  $a, N, exec, nemo"
			
			"$m, M, exec, spotify"
			"$m  $s, M, exec, obsidian"
			
			"$m, A, exec, kitty --class=anicliru -T Anime anicli-ru -q 1080"
			
			"$m, Z, exec, kitty --class=miniprogs -T Sound pulsemixer --no-mouse"
			"$m  $s, Z, exec, kitty --class=miniprogs -T Bluetooth bluetuith"
			
			"$m, T, exec, bottles"
			"$m  $s, T, exec, prismlauncher"

			"$m, XF86WakeUp, exec, playerctl play-pause"
			"$m, XF86Go, exec, playerctl next"
			"$m, Cancel, exec, playerctl previous"
			
			",   $p, exec, grimblast copysave area $(xdg-user-dir PICTURES)/$(date +'scr_%d-%m-%y|%H:%M:%S.png')"
			"$s, $p, exec, grimblast copysave output $(xdg-user-dir PICTURES)/$(date +'scr_%d-%m-%y|%H:%M:%S.png')"
			"$a, $p, exec, grimblast copysave active $(xdg-user-dir PICTURES)/$(date +'scr_%d-%m-%y|%H:%M:%S.png')"
		]
		++ ( builtins.concatLists (builtins.genList (i: let ws = i + 1; in [
				"$mod, code:1${toString i}, workspace, ${toString ws}"
				"$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
			] ) 9) );

		# HOLDING BUTTONS
		binde = [
			# HJKL
			"$m, H, movefocus, l"
			"$m, J, movefocus, d"
			"$m, K, movefocus, u"
			"$m, L, movefocus, r"
			
			"$m $s, H, swapwindow, l"
			"$m $s, J, swapwindow, d"
			"$m $s, K, swapwindow, u"
			"$m $s, L, swapwindow, r"

			"$m $a, H, resizeactive, -50 0"
			"$m $a, J, resizeactive, 0 50"
			"$m $a, K, resizeactive, 0 -50"
			"$m $a, L, resizeactive, 50 0"

			# ARROWS
			"$m, left, movefocus, l"
			"$m, down, movefocus, d"
			"$m, up, movefocus, u"
			"$m, right, movefocus, r"
			
			"$m $s, left, swapwindow, l"
			"$m $s, down, swapwindow, d"
			"$m $s, up, swapwindow, u"
			"$m $s, right, swapwindow, r"

			"$m $a, left, resizeactive, -50 0"
			"$m $a, down, resizeactive, 0 50"
			"$m $a, up, resizeactive, 0 -50"
			"$m $a, right, resizeactive, 50 0"
			
			# BRIGHTNESS
			", XF86MonBrightnessDown, exec, doas light -U 10"
			", XF86MonBrightnessUp, exec, doas light -A 10"

			# SOUND
			", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
			", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
			
			"$s, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%+"
			"$s, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"

			", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
			", XF86AudioMicMute, exec, fixf4=$(cat /sys/class/leds/platform\:\:micmute/brightness); echo $((1-fixf4)) | doas tee /sys/class/leds/platform\:\:micmute/brightness; wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
		];
		bindl = [
			# ", switch:on:Lid Switch, exec, hyprctl keyword input:kb_variant = us && hyprlock"
		];
	};
}
