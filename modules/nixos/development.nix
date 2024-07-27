{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Langs
    go

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
  ];

  programs.neovim.enable = true;
}
