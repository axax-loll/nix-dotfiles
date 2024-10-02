{ ... }:
{
	# SOUND
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		wireplumber.enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};
}
