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

    autoCmd = [
      {
	event = [ "TextYankPost" ];
	callback = {
	  __raw = "function() vim.highlight.on_yank() end";
	};
      }
    ];

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
	action = "<CMD>lua vim.diagnostic.goto_prev()<CR>";
	key = "[d";
	mode = "n";
      }
      {
	action = "<CMD>lua vim.diagnostic.goto_next()<CR>";
	key = "]d";
	mode = "n";
      }
      {
	action = "<CMD>lua vim.diagnostic.open_float()<CR>";
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

      todo-comments.enable = true;

      sleuth.enable = true;

      comment.enable = true;

      treesitter.enable = true;

      luasnip = {
	enable = true;
      };

      telescope = {
	enable = true;

	keymaps = {
	  /*[S]earch [H]elp*/
	  "<leader>sh" = "help_tags";
	  /*[S]earch [K]eymaps*/
	  "<leader>sk" = "keymaps";
	  /*[S]earch [F]iles*/
	  "<leader>sf" = "find_files";
	  /*[S]earch [S]elect Telescope*/
	  "<leader>ss" = "builtin";
	  /*[S]earch [W]ord*/
	  "<leader>sw" = "grep_string";
	  /*[S]earch [G]rep*/
	  "<leader>sg" = "live_grep";
	  /*[S]earch [D]iagnostics*/
	  "<leader>sd" = "diagnostics";
	  /*[S]earch [R]esume*/
	  "<leader>sr" = "resume";
	  /*[S]earch Recent Files ("." for repeat)*/
	  "<leader>s." = "oldfiles";
	  /*[ ] Find existing buffers*/
	  "<leader><leader>" = "buffers";
	};
      };

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
	  # csharp :(
	  omnisharp = {
	    enable = true;
	    rootDir = {
	      __raw = "function() vim.fs.dirname(vim.fs.find({'teste.cs'}, { upware = true})[1]) end";
	    };
	  };
	  # sql
	  sqls.enable = true;
	};

	keymaps.extra = [
	  {
	    action = {
	      __raw = "function() require('telescope.builtin').lsp_definitions() end";
	    };
	    key = "gd";
	    mode = "n";
	  }
	  {
	    action = {
	      __raw = "function() require('telescope.builtin').lsp_references() end";
	    };
	    key = "gr";
	    mode = "n";
	  }
	  {
	    action = {
	      __raw = "function() require('telescope.builtin').lsp_implementations() end";
	    };
	    key = "gI";
	    mode = "n";
	  }
	  {
	    action = {
	      __raw = "function() require('telescope.builtin').lsp_type_definitions() end";
	    };
	    key = "<leader>D";
	    mode = "n";
	  }
	  {
	    action = {
	      __raw = "function() require('telescope.builtin').lsp_document_symbols() end";
	    };
	    key = "<leader>ds";
	    mode = "n";
	  }
	  # {
	  #   action = {
	  #     __raw = "function() require('telescope.builtin').lsp_dynamic_workspace_symbols end";
	  #   };
	  #   key = "<leader>ws";
	  # }
	  {
	    action = {
	      __raw = "function() vim.lsp.buf.rename() end";
	    };
	    key = "<leader>rn";
	    mode = "n";
	  }
	  {
	    action = {
	      __raw = "function() vim.lsp.buf.code_action() end";
	    };
	    key = "<leader>ca";
	    mode = "n";
	  }
	  {
	    action = {
	      __raw = "function() vim.lsp.buf.declaration() end";
	    };
	    key = "gD";
	    mode = "n";
	  }
	  {
	    action = {
	      __raw = "function() vim.lsp.buf.hover() end";
	    };
	    key = "K";
	    mode = "n";
	  }
	];
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
	    {name = "luasnip";}
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

      conform-nvim = {
	enable = true;
	notifyOnError = true;
	formatOnSave.lspFallback = true;
	formatOnSave.timeoutMs = 500;
      };

      gitsigns = {
	enable = true;

	settings.signs = {
	  add = { text = "+"; };
	  change = { text = "~"; };
	  delete = { text = "_"; };
	  topdelete = { text = "‾"; };
	  changedelete = { text = "~"; };
	};
      };
      
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

      mini = {
	enable = true;
	modules = {
	  ai = {
	    n_lines = 500;
	  };
	  surround = { };
	  pairs = { };
	  indentscope = { };
	};
      };
      
      dashboard = {
	enable = true;

	settings = {
	  change_to_vcs_root = true;
	  config = {
	    header = [
	      "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
	      "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
	      "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
	      "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
	      "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
	      "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
	    ];
	    mru = {
	      limit = 20;
	    };
	    project = {
	      enable = true;
	    };
	    shortcut = [
	      {
		action = {
		  __raw = "function(path) vim.cmd('Telescope find_files') end";
		};
		desc = "Files";
		group = "Label";
		icon = " ";
		icon_hl = "@variable";
		key = "f";
	      }
	      {
		action = "Telescope find_files search_dirs=~/nixos/";
		desc = " dotfiles";
		group = "Number";
		key = "d";
	      }
	    ];
	    week_header = {
	      enable = true;
	    };
	  };
	  theme = "hyper";
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
