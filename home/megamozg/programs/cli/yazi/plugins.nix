{ pkgs, lib, ... }:
let
	yazi-plugins = pkgs.fetchFromGitHub {
		owner = "yazi-rs";
		repo = "plugins";
		rev = "74a837c6eafba59e22dc3d8d8ec630934580c70c";
		hash = "sha256-h+CoRLRyC+fJogfAoOw7twXSRkUotbgnS3gBFvlxNlw=";
	};
in
{
	# PLUGINS FROM REPO
	programs.yazi.plugins = {
		# BUILTINED
		chmod = "${yazi-plugins}/chmod.yazi";
		max-preview = "${yazi-plugins}/max-preview.yazi";
		no-status = "${yazi-plugins}/no-status.yazi";
		hide-preview = "${yazi-plugins}/hide-preview.yazi";
		full-border = "${yazi-plugins}/full-border.yazi";

		# FETCHED
		ouch = pkgs.fetchFromGitHub {
    	owner = "ndtoan96";
    	repo = "ouch.yazi";
    	rev = "251da6930ca8b7ee0384810086c3bf644caede3e";
    	hash = "sha256-yLt9aY6hUIOdBI5bMdCs7VYFJGyD3WIkmPxvWKNCskA=";
		};
		glow = pkgs.fetchFromGitHub {
			owner = "Reledia";
			repo = "glow.yazi";
			rev = "4e016fa2357e5e7e9b1a4881e1492d73a0a2f2cc";
			hash = "sha256-d73C8s8p85c0xfq8Nfzlnp83JUakMPbviQDFCX0G+qE=";
		};
		ffmpeg = pkgs.fetchFromGitHub {
			owner = "Tyarel8";
			repo = "video-ffmpeg.yazi";
			rev = "fe26a18f9b32880e10b686df5c4559d9af2bce6b";
			hash = "sha256-PIsetF42mlxDv7hEBgjt4FdryDhWTAF/o0Z3Z1G8HJE=";
		};
		relative = pkgs.fetchFromGitHub {
			owner = "dedukun";
			repo = "relative-motions.yazi";
			rev = "89d0cb9c84a7bba98d2e7ca4bac706d2458d0c06";
			hash = "sha256-qtjAgH+NS4YFVIwq+x2sC90y4vDSXNI8pGXIZ3FuQMU=";
		};
		enter = pkgs.fetchFromGitHub {
			owner = "ourongxing";
			repo = "fast-enter.yazi";
			rev = "dd498123cb0696d7fa50b32d2268fb8c2084a4a4";
			hash = "sha256-jjluqFboFXV4yqBMvW7WhO61Urn2FQ/O31PqlaCxB2c=";
		};
		starship = pkgs.fetchFromGitHub {
			owner = "Rolv-Apneseth";
			repo = "starship.yazi";
			rev = "77a65f5a367f833ad5e6687261494044006de9c3";
			hash = "sha256-sAB0958lLNqqwkpucRsUqLHFV/PJYoJL2lHFtfHDZF8=";
		};
		yatline = pkgs.fetchFromGitHub {
			owner = "imsi32";
			repo = "yatline.yazi";
			rev = "7b56434864d6a0b5d547fed2339b99346a018522";
			hash = "sha256-4qxBAXFyPBQhSU24xL7fzhgM5e8Cq7BigEp4GPxSjD4=";
		};
	};

	# CUSTOM PLUGINS
  xdg.configFile = {
    # SMART ENTER
    "yazi/plugins/smart-enter.yazi/init.lua".text = ''
      return {
	      entry = function()
		      local h = cx.active.current.hovered
		      ya.manager_emit(h and h.cha.is_dir and "enter" or "open", { hovered = true })
	      end,
      }
    '';
  };
}
