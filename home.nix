{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
  ];

  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;

  services.mako = {
    enable = true;
    backgroundColor = "#${config.colorScheme.colors.base01}";
    borderColor = "#${config.colorScheme.colors.base0E}";
    borderRadius = 5;
    borderSize = 2;
    textColor = "#${config.colorScheme.colors.base04}";
    layer = "overlay";
  };

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
