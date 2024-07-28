{ config, pkgs, ... }:

{
  stylix.targets.vim.enable = false;
  programs.neovim.enable = true;
  home.file = {
    nvim = {
      source = ./nvim;
      target = "/home/rafael/.config/nvim";
    };
  };
}
