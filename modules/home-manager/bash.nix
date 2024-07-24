{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      eval "$(starship init bash)"
    '';
  };
}
