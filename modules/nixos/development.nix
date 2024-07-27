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

    # Grep
    ripgrep

    # Terminal Utils
    eza
    zoxide
    bat
    tldr
    fastfetch

    # Langs
    go
  ];

  programs.neovim.enable = true;
}
