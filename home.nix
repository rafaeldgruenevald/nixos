{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    ./features/mako.nix
    ./features/alacritty.nix
    inputs.nixvim.homeManagerModules.nixvim
    ./features/nixvim.nix
  ];
  ./features/nixvim.nix

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

  programs.home-manager.enable = true;
}
