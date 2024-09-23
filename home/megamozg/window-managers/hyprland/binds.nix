{ pkgs, config, ... }:
{
	wayland.windowManager.hyprland.settings = {
		# SHORTCUTS
		"$m" = "SUPER";
		"$rt" = "Return";
		"$sp" = "SPACE";
		"$s" = "SHIFT";
		"$a" = "ALT";
		"$t" = "Tab";
		
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
			"$m  $s, $sp, overview:toggle"
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

			"$m, , workspace, e+1"
			"$m, $mu, workspace, e-1"
			
			# PROGRAMS
			"$m, $rt, exec, kitty -T Terminal"
			"$m  $s, $rt, exec, kitty --class=termfloat -T Terminal"
			
			"$m, $t, exec, nwg-drawer -ovl -nocats -nofs -d -c 7 -mb -49"
			"$m  $s, $t, exec, anyrun"
			
			"$m, V, exec, ayugram-desktop"
			"$m  $s, V, exec, vesktop"
			
			"$m, B, exec, firefox"
			"$m  $s, B, exec, chromium"
			
			"$m, N, exec, kitty -T Explorer joshuto"
			"$m  $s, N, exec, kitty --class=tfm -T Explorer joshuto"
			"$m  $a, N, exec, nemo"
			
			"$m, M, exec, spotify"
			"$m  $s, M, exec, obsidian"
			
			"$m, A, exec, kitty --class=anicliru -T Anime anicli-ru -q 1080 -pa='glsl-shaders=${pkgs.anime4k}/Anime4K_Clamp_Highlights.glsl:${pkgs.anime4k}/Anime4K_Restore_CNN_M.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_M.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x2.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x4.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_S.glsl'"
			
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
			# RESIZE WINDOW
			"$m, left, resizeactive, -50 0"
			"$m, right, resizeactive, 50 0"
			"$m, up, resizeactive, 0 -50"
			"$m, down, resizeactive, 0 50"
			
			"$m, H, resizeactive, -50 0"
			"$m, L, resizeactive, 50 0"
			"$m, K, resizeactive, 0 -50"
			"$m, J, resizeactive, 0 50"

			# MOVE WINDOW
			"$m $s, right, moveactive, 50 0"
			"$m $s, left, moveactive, -50 0"
			"$m $s, up, moveactive, 0 -50"
			"$m $s, down, moveactive, 0 50"
			
			"$m $s, H, moveactive, 50 0"
			"$m $s, L, moveactive, -50 0"
			"$m $s, K, moveactive, 0 -50"
			"$m $s, J, moveactive, 0 50"

			# FOCUS WINDOW
			"$m $a, left, movefocus, l"
			"$m $a, right, movefocus, r"
			"$m $a, up, movefocus, u"
			"$m $a, down, movefocus, d"
			
			"$m $a, H, movefocus, l"
			"$m $a, L, movefocus, r"
			"$m $a, K, movefocus, u"
			"$m $a, J, movefocus, d"

			# SWAP WINDOW
			"$m $c, left, swapwindow, l"
			"$m $c, right, swapwindow, r"
			"$m $c, up, swapwindow, u"
			"$m $c, down, swapwindow, d"
			
			"$m $c, H, swapwindow, l"
			"$m $c, L, swapwindow, r"
			"$m $c, K, swapwindow, u"
			"$m $c, J, swapwindow, d"

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
