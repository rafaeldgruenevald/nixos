{ config, pkgs, lib, ... }:

{
  stylix.targets.vim.enable = false;
  programs.neovim = {
    enable = true;
    extraConfig = lib.fileContents ./nvim/init.lua; 
  };
}
