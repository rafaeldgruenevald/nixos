{ config, pkgs, ... }:

{
  programs.neovim.enable = true;
  home.file = {
    nvim = {
      source = ./nvim;
      target = "/home/rafael/.config/nvim";
    };
  };
}
