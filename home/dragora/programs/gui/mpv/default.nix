{ pkgs, ... }:
{
    # imports = [ ./shaders ];
    programs.mpv = {
    	enable = true;
    	scripts = with pkgs.mpvScripts; [
    		thumbnail
    		sponsorblock-minimal
    		videoclip
    	];
    	scriptOpts = {
			sponsorblock-minimal = {
				sponsorblock_minimal-server = "https://sponsor.ajay.app/api/skipSegments";
    			sponsorblock_minimal-categories = ["sponsor"];
			};
			mpv_thumbnail_script = {
				autogenerate = "yes";
				autogenerate_max_duration = "3600";
				prefer_mpv = "yes";
				mpv_no_sub = "no";
				thumbnail_width = 200;
				thumbnail_height = 200;
				thumbnail_count = 150;
				thumbnail_network = "no";
				background_color = "282828";
			};
    	};
    	config = {
      		fs = "yes";
      		osc = "no";
    	};
    	bindings = {
    		WHEEL_UP = "add volume 2";
    		WHEEL_DOWN = "add volume -2";
    		"Shift+WHEEL_UP" = "add volume 5";
    		"Shift+WHEEL_DOWN" = "add volume -5";

    		RIGHT = "seek 5";
    		l = "seek 5";
    		"д" = "seek 5";

    		LEFT = "seek -5";
    		h = "seek -5";
    		"р" = "seek -5";

    		UP = "add volume 2";
    		k = "add volume 2";
    		"л" = "add volume 2";

    		DOWN = "add volume -2";
    		j = "add volume -2";
    		"о" = "add volume -2";

    		"Shift+RIGHT" = "seek 10";
    		"Shift+LEFT" = "seek -10";

    		"Shift+UP" = "add volume 5";
    		"Shift+DOWN" = "add volume -5";

    		q = "quit";
    		"й" = "quit";
    		Q = "quit-watch-later";

    		SPACE = "cycle pause";
    		p = "cycle pause";
    		"з" = "cycle pause";
    		
    		m = "cycle mute";
    		"ь" = "cycle mute";

    		o = "show-progress";
    		"щ" = "show-progress";

    		f = "cycle fullscreen";
    		"а" = "cycle fullscreen";
    		ESC = "set fullscreen no";
    		
        	c = "script-binding videoclip-menu-open";
    	};
    	extraInput = ''
				CTRL+1 no-osd change-list glsl-shaders set "${pkgs.anime4k}/Anime4K_Clamp_Highlights.glsl:${pkgs.anime4k}/Anime4K_Restore_CNN_VL.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_VL.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x2.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x4.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_M.glsl"; show-text "Anime4K: Mode A (HQ)"
				CTRL+2 no-osd change-list glsl-shaders set "${pkgs.anime4k}/Anime4K_Clamp_Highlights.glsl:${pkgs.anime4k}/Anime4K_Restore_CNN_Soft_VL.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_VL.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x2.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x4.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_M.glsl"; show-text "Anime4K: Mode B (HQ)"
				CTRL+3 no-osd change-list glsl-shaders set "${pkgs.anime4k}/Anime4K_Clamp_Highlights.glsl:${pkgs.anime4k}/Anime4K_Upscale_Denoise_CNN_x2_VL.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x2.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x4.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_M.glsl"; show-text "Anime4K: Mode C (HQ)"
				CTRL+4 no-osd change-list glsl-shaders set "${pkgs.anime4k}/Anime4K_Clamp_Highlights.glsl:${pkgs.anime4k}/Anime4K_Restore_CNN_VL.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_VL.glsl:${pkgs.anime4k}/Anime4K_Restore_CNN_M.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x2.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x4.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_M.glsl"; show-text "Anime4K: Mode A+A (HQ)"
				CTRL+5 no-osd change-list glsl-shaders set "${pkgs.anime4k}/Anime4K_Clamp_Highlights.glsl:${pkgs.anime4k}/Anime4K_Restore_CNN_Soft_VL.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_VL.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x2.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x4.glsl:${pkgs.anime4k}/Anime4K_Restore_CNN_Soft_M.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_M.glsl"; show-text "Anime4K: Mode B+B (HQ)"
				CTRL+6 no-osd change-list glsl-shaders set "${pkgs.anime4k}/Anime4K_Clamp_Highlights.glsl:${pkgs.anime4k}/Anime4K_Upscale_Denoise_CNN_x2_VL.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x2.glsl:${pkgs.anime4k}/Anime4K_AutoDownscalePre_x4.glsl:${pkgs.anime4k}/Anime4K_Restore_CNN_M.glsl:${pkgs.anime4k}/Anime4K_Upscale_CNN_x2_M.glsl"; show-text "Anime4K: Mode C+A (HQ)"
				
				CTRL+0 no-osd change-list glsl-shaders clr ""; show-text "GLSL shaders cleared"
    	'';
  	};
}
