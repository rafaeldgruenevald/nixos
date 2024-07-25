{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Utility apps
    protonup
    mangohud
    # Windows games and Epic
    lutris
    heroic
    # Emulation
    retroarch
    dolphin-emu
    ryujinx
    # Simple virtual machines
    bottles
    # Discord
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
