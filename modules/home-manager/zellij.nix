{ config, pkgs, ... }:

{
  programs.zellij = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      simplified_ui = true;
      pane_frames = false;
      on_force_close = "quit";
    };
  };
}
