{ config, pkgs, ... }:

{
  stylix.targets.alacritty.enable = false; 
  programs.alacritty = {
    enable = true;
    settings = {
      font.normal.family = "JetBrainsMono Nerd Font Mono";
      font.size = 13;
      window = {
        opacity = 0.9;

	padding.x = 10;
	padding.y = 10;

	decorations = "None";
      };
      colors = {
        primary = {
	  background = "0x1e1e2e";
	  foreground = "0xcdd6f4";
	};
	cursor = {
	  text = "0x1e1e2e";
	  cursor = "0xcdd6f4";
	};
	normal = {
	  black = "0x1e1e2e";
	  red = "0xf38ba8";
	  green = "0xa6e3a1";
	  yellow = "0xf9e2af";
	  blue = "0x89b4fa";
	  magenta = "0xcba6f7";
	  cyan = "0x94e2d5";
	  white = "0xcdd6f4";
	};
	bright = {
	  black = "0x45475a";
	  red = "0xfab387";
	  green = "0x181825";
	  yellow = "0x313244";
	  blue = "0x585b70";
	  magenta = "0xf5e0dc";
	  cyan = "0xf2cdcd";
	  white = "0xb4befe";
	};
      };
    };
  };
}
