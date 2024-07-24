{ config, pkgs, inputs, ... }:

{
  # Virt-Manager
  virtualisation.libvirtd.enable = true; 
  programs.virt-manager.enable = true;
  # Docker
  virtualisation.docker.enable = true;
}

