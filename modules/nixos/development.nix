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
    wget

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
    rustup
    nodejs_22
  ];
}
