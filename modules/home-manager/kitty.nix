{ config, pkgs, ... }:

{
  stylix.targets.kitty.enable = false;
  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    font.name = "JetBrainsMono Nerd Font Mono";
    font.size = 13;
    shellIntegration.enableBashIntegration = true;
  };
}
