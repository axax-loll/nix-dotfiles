{ ... }:
{
	programs.firefox.profiles.dragora.userChrome = ''
		@media (min-width: 1000px) {
		
		
		  #navigator-toolbox { display: flex; flex-wrap: wrap; flex-direction: row; }
		
		
		  #nav-bar {
		
		    order: var(--uc-urlbar-position);
		    width: var(--uc-urlbar-min-width);
		
		  }
		  
		  #nav-bar #urlbar-container { min-width: 0px !important; width: auto !important; }
		
		
		  #titlebar {
		
		    order: 2;
		    width: calc(100vw - var(--uc-urlbar-min-width) - 1px);
		
		  }
		
		
		  #PersonalToolbar {
		
		    order: var(--uc-toolbar-position);
		    width: 100%;
		
		  }
		
		
		  #navigator-toolbox:focus-within #nav-bar { width: var(--uc-urlbar-max-width); }
		  #navigator-toolbox:focus-within #titlebar { width: calc(100vw - var(--uc-urlbar-max-width) - 1px); }
		
		
		}
	'';
}
