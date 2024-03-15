{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    inputs.nixvim.homeManagerModules.nixvim
    ./config/mako.nix
    ./config/alacritty.nix
    ./config/nixvim.nix
    ./config/lf.nix
    ./config/firefox.nix
    ./config/zellij.nix
    ./config/zsh.nix
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
