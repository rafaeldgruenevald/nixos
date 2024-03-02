{ pkgs, config, inputs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.rafael = {
      id = 0;
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        ublock-origin
        youtube-shorts-block
        darkreader
        sponsorblock
	vimium
	return-youtube-dislikes
      ];
      bookmarks = [
        {
	  name = "ChatGPT";
	  url = "https://chat.openai.com/auth/login?next=%2Fc%2F05c9ce07-f8c6-4a62-a7e2-406a076e6d65";
	}
	{
	  name = "GitHub";
	  url = "https://github.com/";
	}
	{
	  name = "Classroom";
	  url = "https://classroom.google.com/u/1/h";
	}
	{
	  name = "Proton Mail";
	  url = "https://account.proton.me/login";
	}
	{
	  name = "Gmail";
	  url = "https://www.google.com/intl/pt-BR/gmail/about/#inbox";
	}
	{
	  name = "FitGirl";
	  url = "https://fitgirl-repacks.site/";
	}
	{
	  name = "r/Piracy";
	  url = "https://www.reddit.com/r/Piracy/wiki/megathread/";
	}
	{
	  name = "Rezi";
	  url = "https://rezi.one/";
	}
      ];
    };
    profiles.rafael_trabalho = {
      id = 1;
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        ublock-origin
        youtube-shorts-block
        darkreader
        sponsorblock
	vimium
	return-youtube-dislikes
      ];
      bookmarks = [
        {
	  name = "ChatGPT";
	  url = "https://chat.openai.com/auth/login?next=%2Fc%2F05c9ce07-f8c6-4a62-a7e2-406a076e6d65";
	}
	{
	  name = "GitHub";
	  url = "https://github.com/";
	}
	{
	  name = "Classroom";
	  url = "https://classroom.google.com/u/1/h";
	}
	{
	  name = "Proton Mail";
	  url = "https://account.proton.me/login";
	}
	{
	  name = "Gmail";
	  url = "https://www.google.com/intl/pt-BR/gmail/about/#inbox";
	}
	{
	  name = "TUM";
	  url = "https://www.tum.de/en/studies/international-students/";
	}
	{
	  name = "University of Amsterdam";
	  url = "https://www.uva.nl/en?cb";
	}
      ];
    };
    profiles.rafael_teste = {
      id = 2;
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        ublock-origin
        youtube-shorts-block
        darkreader
        sponsorblock
	vimium
      ];
    };
  };
}
