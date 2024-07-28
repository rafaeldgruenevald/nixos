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

      mouse = "a";

      shiftwidth = 2;
    };

    globals.mapleader = " ";
    globals.maplocalleader = " ";

    keymaps = [
      /* Close buffer */
      {
	action = "<CMD>bd<CR>";
	key = "<leader>q";
      }
      /* Save buffer */
      {
	action = "<CMD>w<CR>";
	key = "<leader>w";
      }
      /* Diagnostics */
      {
	action = "vim.diagnostics.goto_prev";
	key = "[d";
	mode = "n";
      }
      {
	action = "vim.diagnostics.goto_next";
	key = "]d";
	mode = "n";
      }
      {
	action = "vim.diagnostics.open_float";
	key = "<leader>d";
	mode = "n";
      }
      /* Open Oil */
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

	filetype = {
	  sql = {
	    sources = [
	      {name = "vim-dadbod-completion";}
	      {name = "buffer"; }
	    ];
	  };
	};

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
	  };
	  view_options = {
	    show_hidden = true;
	  };
	};
      };
    };
    extraPlugins = with pkgs.vimPlugins; [
      vim-dadbod
      vim-dadbod-completion
      vim-dadbod-ui
    ];
  };
}
