{ pkgs, config, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    shellAliases = {
      ls = "exa --icons";
      l = "exa -l --icons";
      la = "exa -la --icons";
      v = "nvim ";
      sv = "sudo nvim ";
      nixos-switch = "sudo nixos-rebuild switch --flake ~/nixos/#default";
    };

    oh-my-zsh = {
      enable = true;
      theme = "Soliah";
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
