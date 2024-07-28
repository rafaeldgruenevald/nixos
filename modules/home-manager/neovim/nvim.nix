{ config, pkgs, ... }:

{
  programs.neovim.enable = true;
  home.file = {
    nvim.source = ./nvim;
  };
}
