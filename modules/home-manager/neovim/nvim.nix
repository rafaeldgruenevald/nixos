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

    globals.mapleader = " ";

    keymaps = [
      {
	action = "<CMD>Oil<CR>";
	key = "<leader>e";
      }
    ];

    plugins = {
      bufferline.enable = true;
      lualine.enable = true;

      treesitter.enable = true;

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

	  mapping = {
	    "<C-Space>" = "cmp.mapping.complete()";
	    "<C-d>" = "cmp.mapping.scroll_docs(-4)";
	    "<C-e>" = "cmp.mapping.close()";
	    "<C-f>" = "cmp.mapping.scroll_docs(4)";
	    "<CR>" = "cmp.mapping.confirm({ select = true })";
	    "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
	    "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
	  };
	};
      };

      luasnip.enable = true;

      telescope.enable = true;
      
      oil = {
	enable = true;

	settings = {
	  columns = [ "icon" ];
	  keymaps = {
	    "<C-h>" = false;
	    "<C-r>" = "actions.refresh";
	    "<leader>qq" = "actions.close";
	  };
	  view_options = {
	    show_hidden = true;
	  };
	};
      };
    };
  };
}
