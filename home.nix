{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    ./features/mako.nix
    ./features/alacritty.nix
    inputs.nixvim.homeManagerModules.nixvim
    ./features/nixvim.nix
  ];

  # Base 16 Color Scheme
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "rafael";
  home.homeDirectory = "/home/rafael";

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
  };

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

  gtk.enable = true;

  gtk.cursorTheme.package = pkgs.bibata-cursors;
  gtk.cursorTheme.name = "Bibata-Modern-Ice";

  gtk.theme.package = pkgs.gruvbox-dark-gtk;
  gtk.theme.name = "gruvbox-dark";

  gtk.iconTheme.package = pkgs.kora-icon-theme; 
  gtk.iconTheme.name = "kora-pgrey";

  qt.enable = true;

  qt.platformTheme = "gnome";

  qt.style.name = "adwaita-dark";

  qt.style.package = pkgs.adwaita-qt;

  programs.home-manager.enable = true;
}
