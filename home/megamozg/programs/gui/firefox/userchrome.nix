{ ... }:
let
	repo = "https://github.com/axax-loll/fuji-wallpapers/blob/main";
in
{
	programs.firefox.profiles.dragora.userChrome = ''
		* {
			font-family: "JetBrainsMono Nerd Font" !important;
			font-size: 12pt !important; 
		}
	'';
	programs.firefox.profiles.dragora.userContent = ''
		@-moz-document url(about:home), url(about:newtab), url(about:privatebrowsing) {
			.click-target-container *, .top-sites-list * {
				color: #fff !important ;
				text-shadow: 2px 2px 2px #222 !important ;
			}
			body::before {
				content: "" ;
				z-index: -1 ;
				position: fixed ;
				top: 0 ;
				left: 0 ;
				background: #0F0F0F no-repeat url("${repo}/synth.png?raw=true") center ;
				background-size: cover ;
				width: 100vw ;
				height: 100vh ;
			}
			.logo { background-image: url("${repo}/logo.png?raw=true") !important; }
			.search-wrapper input { background: #0F0F0F !important; }
			#PlacesToolbarItems {
				width: 100%;
				display: flex;
				justify-content: center;
			}
		}
	'';
}
