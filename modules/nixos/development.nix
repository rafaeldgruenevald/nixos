{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    zed-editor
    jetbrains.idea-community
    arduino-ide
    dbeaver-bin
  ];

  programs.neovim.enable = true;
}
