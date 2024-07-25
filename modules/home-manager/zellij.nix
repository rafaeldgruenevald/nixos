{ config, pkgs, ... }:

{
  programs.zellij = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      pane_frames = false;
      on_force_close = "quit";
    };
  };
}
