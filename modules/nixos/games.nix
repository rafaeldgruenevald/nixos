{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    protonup
    mangohud
    lutris
    heroic
    bottles
    vesktop
  ];

  # ADD STEAM COMPAT TOOLS PATH!!!

  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;

  programs.gamemode.enable = true;
}
