{ config, pkgs, inputs, ... }:

{
  programs.bash = {
    enableCompletion = true;
    shellInit = ''
      eval "$(starship init bash)"
    '';
  };
}
