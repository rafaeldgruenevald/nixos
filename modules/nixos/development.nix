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

    # Grep
    ripgrep

    # Terminal Utils
    eza
    zoxide
    bat
  ];

  programs.neovim.enable = true;
}
