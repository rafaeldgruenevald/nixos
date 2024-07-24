{ config, pkgs, ... }:

{
  environment.pathsToLink = [ "/share/bash-completion" ];
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      eval "$(starship init bash)"
    '';
  };
}
