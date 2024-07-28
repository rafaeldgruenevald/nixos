{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    options = {
      number = true;
      relativenumber = true;

      shiftwidth = 2;
    };
  };
}
