{ ... }:
{
	xdg.configFile."mpv/shaders/Anime4K_AutoDownscalePre_x2.glsl".text = ''
		vec4 hook() {
			return HOOKED_tex(HOOKED_pos);
		}
	'';
}
