{ ... }:
{
	programs.joshuto.theme = {
		tabs.styles = {
			active = {
				bg = "none";
				fg = "blue";
				bold = true;
			};
			inactive = {
				bg = "none";
				fg = "gray";
				bold = true;
			};
			scroll_front = {
				fg = "yellow";
				bold = true;
			};
			scroll_back = {
				fg = "yellow";
				bold = true;
			};
		};
		selection = {
			fg = "yellow";
			bold = true;
			prefix = " ";
		};
		visual_mode_selection = {
			fg = "light_red";
			bold = true;
			prefix = "v ";
		};
		regular = {
			fg = "white";
		};
		directory = {
			fg = "light_blue";
			bold = true;
		};
		link = {
			fg = "cyan";
			bold = true;
		};
		socket = {
			fg = "light_magenta";
			bold = true;
		};
		executable = {
			fg = "light_green";
			bold = true;
		};
		link_invalid = {
			fg = "red";
			bold = true;
		};
		ext = {
			bmp.fg = "yellow";
			gif.fg = "yellow";
			heic.fg = "yellow";
			jpg.fg = "yellow";
			jpeg.fg = "yellow";
			pgm.fg = "yellow";
			png.fg = "yellow";
			ppm.fg = "yellow";
			svg.fg = "yellow";
			
			wav.fg = "magenta";
			flac.fg = "magenta";
			mp3.fg = "magenta";
			amr.fg = "magenta";
			
			avi.fg = "magenta";
			flv.fg = "magenta";
			m3u.fg = "magenta";
			m4a.fg = "magenta";
			m4v.fg = "magenta";
			mkv.fg = "magenta";
			mov.fg = "magenta";
			mp4.fg = "magenta";
			mpg.fg = "magenta";
			rmvb.fg = "magenta";
			webm.fg = "magenta";
			wmv.fg = "magenta";
			
			7z.fg = "red";
			bz2.fg = "red";
			gz.fg = "red";
			rar.fg = "red";
			tar.fg = "red";
			tgz.fg = "red";
			xz.fg = "red";
			zip.fg = "red";
		};
		tabs.chars = {
			active_prefix = " ";
			active_postfix = " ";
			inactive_prefix = " ";
			inactive_postfix = "";
			divider = " ";
			scroll_front_prefix = "";
			scroll_front_postfix = "";
			scroll_front_prestring = "« ";
			scroll_front_poststring = " ";
			scroll_back_prefix = "";
			scroll_back_postfix = "";
			scroll_back_prestring = " ";
			scroll_back_poststring = " »";
			padding_prefix = " ";
			padding_postfix = " ";
			padding_fill = " ";
		};
	};
}
