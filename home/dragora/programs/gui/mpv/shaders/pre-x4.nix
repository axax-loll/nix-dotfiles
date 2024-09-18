{ ... }:
{
	xdg.configFile."mpv/shaders/Anime4K_AutoDownscalePre_x4.glsl".text = ''
		vec4 hook() {
			return HOOKED_tex(HOOKED_pos);
		}
	'';
}
