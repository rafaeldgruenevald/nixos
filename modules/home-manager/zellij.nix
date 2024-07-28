{ config, pkgs, ... }:

{
  programs.zellij = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      default_layout = "compact";
      pane_frames = false;
      on_force_close = "quit";
    };
  };
}
