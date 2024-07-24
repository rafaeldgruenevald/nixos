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

  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS =
      "home/rafael/.steam/root/compatibilitytools.d";
  };

  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;

  programs.gamemode.enable = true;
}
