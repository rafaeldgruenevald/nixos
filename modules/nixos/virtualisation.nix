{ config, pkgs, inputs, ... }:

{
  # Virt-Manager
  virtualisation.libvirtd.enable = true; 
  programs.virt-manager.enable = true;
  # Virtualbox
  virtualisation.virtualbox.host.enable = true;
  environment.systemPackages = with pkgs; [
    virtualbox
  ];
  # Docker
  virtualisation.docker.enable = true;
}

