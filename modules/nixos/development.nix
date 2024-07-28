{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Version Control
    git
    gitui
    gh

    # IDES
    zed-editor
    jetbrains.idea-community
    arduino-ide

    # DB Management
    dbeaver-bin
    lazysql

    # General Utils
    ripgrep
    cmake
    unzip

    # Terminal Utils
    fd
    eza
    zoxide
    bat
    tldr
    fastfetch

    # Langs
    go
    gcc
    lua
  ];
}
