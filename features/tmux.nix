{ pkgs, config, ... }:

{
  programs.tmux = {
    enable = true;
    escapeTime = 0;
    baseIndex = 1;
    keyMode = "vi";
    shortcut = "b";

    extraConfig = ''
      set-option -g default-shell ${pkgs.bash}/bin/bash
    '';
  };
}
