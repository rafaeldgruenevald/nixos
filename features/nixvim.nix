{ pkgs, config, ... }:

{
  programs.nixvim = {
    enable = true;

    globals.mapleader = " ";

    options = {
      number = true;
      relativenumber = true;

      shiftwidth = 2;
    };

    colorschemes.gruvbox.enable = true;

    plugins = {
      lualine.enable = true;

      telescope.enable = true;

      oil.enable = true;

      treesitter.enable = true;

      luasnip.enable = true;
    };

    plugins.lsp = {
      enable = true;

      servers = {
        tsserver.enable = true;

	html.enable = true;

	tailwindcss.enable = true;

	cssls.enable = true;

	gopls.enable = true;

	clangd.enable = true;

        lua-ls = {
          enable = true;
          settings.telemetry.enable = false;
        };

        rust-analyzer = {
          enable = true;
          installCargo = true;
	  installRustc = true;
        };
      };
    };

    plugins.nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
        {name = "luasnip";}
      ];

      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = {
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expandable() then
                luasnip.expand()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              elseif check_backspace() then
                fallback()
              else
                fallback()
              end
            end
          '';
          modes = [ "i" "s" ];
        };
      };
    };
  };
}
