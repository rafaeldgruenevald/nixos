{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    options = {
      number = true;
      relativenumber = true;

      shiftwidth = 2;
    };

    plugins = {
      bufferline.enable = true;
      lualine.enable = true;

      lsp = {
        enable = true;

	servers = {
	  # javascript / typescript
	  tsserver.enable = true;
	  
	  # lua
	  lua-ls.enable = true;

	  # golang
	  gopls.enable = true;

	  # rust
	  rust-analyzer.enable = true;
	};
      };

      cmp = {
	enable = true;
	autoEnableSources = true;
      };
    };
  };
}
