{ ... }:
{
	xdg.configFile."mpv/shaders/Anime4K_Clamp_Highlights.glsl".text = ''
		#define KERNELSIZE 5 //Kernel size, must be an positive odd integer.
		#define KERNELHALFSIZE 2 //Half of the kernel size without remainder. Must be equal to trunc(KERNELSIZE/2).
		
		float get_luma(vec4 rgba) {
			return dot(vec4(0.299, 0.587, 0.114, 0.0), rgba);
		}
		
		vec4 hook() {
			float gmax = 0.0;
			for (int i=0; i<KERNELSIZE; i++) {
				float g = get_luma(MAIN_texOff(vec2(i - KERNELHALFSIZE, 0)));	
				gmax = max(g, gmax);
			}
			return vec4(gmax, 0.0, 0.0, 0.0);
		}
		
		#define KERNELSIZE 5 //Kernel size, must be an positive odd integer.
		#define KERNELHALFSIZE 2 //Half of the kernel size without remainder. Must be equal to trunc(KERNELSIZE/2).
		
		vec4 hook() {
			float gmax = 0.0;
			for (int i=0; i<KERNELSIZE; i++) {
				float g = STATSMAX_texOff(vec2(0, i - KERNELHALFSIZE)).x;
				gmax = max(g, gmax);
			}
			return vec4(gmax, 0.0, 0.0, 0.0);
		}
		
		float get_luma(vec4 rgba) {
			return dot(vec4(0.299, 0.587, 0.114, 0.0), rgba);
		}
		
		vec4 hook() {
			float current_luma = get_luma(HOOKED_tex(HOOKED_pos));
			float new_luma = min(current_luma, STATSMAX_tex(HOOKED_pos).x);
			return HOOKED_tex(HOOKED_pos) - (current_luma - new_luma); 
		}
	'';
}
