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
	  # nix
	  nixd.enable = true;

	  # json
	  jsonls.enable = true;

	  # javascript / typescript
	  tsserver.enable = true;

	  # css
	  cssls.enable = true;

	  # tailwind
	  tailwindcss.enable = true;

	  # html
	  html.enable = true;

	  # htmx
	  htmx.enable = true;
	  
	  # lua
	  lua-ls.enable = true;

	  # golang
	  gopls.enable = true;

	  # C/C++
	  clangd.enable = true;

	  # cmake
	  cmake.enable = true;

	  # rust
	  rust-analyzer.enable = true;

	  # sql
	  sqls.enable = true;
	};
      };

      cmp = {
	enable = true;
	autoEnableSources = true;

	settings = {
	  sources = [
	    {name = "nvim_lsp";}
	    {name = "path";}
	    {name = "buffer";}
	  ];
	};
      };
    };
  };
}
