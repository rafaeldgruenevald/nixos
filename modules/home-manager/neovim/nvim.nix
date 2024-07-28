{ config, pkgs, lib, ... }:

{
  stylix.targets.vim.enable = false;
  programs.neovim = {
    enable = true;
    extraLuaConfig = lib.fileContents ./nvim/init.lua; 
  };
}
