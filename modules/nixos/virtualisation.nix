{ config, pkgs, inputs, ... }:

{
  # Virt-Manager
  virtualisation.libvirtd.enable = true; 
  programs.virt-manager.enable = true;
  # Virtualbox
  environment.systemPackages = with pkgs; [
    virtualbox
  ];
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
  users.extraGroups.vboxusers.members = [ "rafael" ];
  # Docker
  virtualisation.docker.enable = true;
}

