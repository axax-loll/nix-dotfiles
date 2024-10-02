{ ... }:
{
	programs.firefox.profiles.dragora.userChrome = ''
		@media (min-width: 1000px) {
		
		  #nav-bar { margin: calc((var(--urlbar-min-height) * -1) - 12px) calc(100vw - var(--uc-urlbar-min-width)) 0 0 !important; }
		  #titlebar { margin-inline-start: var(--uc-urlbar-min-width) !important; }
		
		  #navigator-toolbox:focus-within #nav-bar { margin: calc((var(--urlbar-min-height) * -1) - 12px) calc(100vw - var(--uc-urlbar-max-width)) 0 0 !important; }
		  #navigator-toolbox:focus-within #titlebar { margin-inline-start: var(--uc-urlbar-max-width) !important; }
		
		}
	'';
}
