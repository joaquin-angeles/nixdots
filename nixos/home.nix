{ config, pkgs, inputs,  ... }:

{
  # User configuration
  home.username = "joaquin";
  home.homeDirectory = "/home/joaquin";
  home.stateVersion = "25.05";

  # Cursor theming
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true; # XWayland cursor theming
    package = pkgs.bibata-cursors; # Cursor package
    name = "Bibata-Modern-Classic"; # Cursor theme
    size = 24;
  };

  # Qt theming
  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

  # Modules
  imports = [
    # Configurations
    ./modules/home/dotfiles.nix
    ./modules/home/environment.nix # Environment variables
    ./modules/home/fonts.nix # Fonts

    # Packages
    ./modules/home/apps/packages.nix # User packages
    ./modules/home/apps/programs.nix # Program configuration

    # Zsh
    ./modules/home/shell/base.nix # Enabling shell and/or shell plugins
    ./modules/home/shell/aliases.nix # Shell aliases
    ./modules/home/shell/functions.nix # Pre-initialization
    # ./modules/home/shell/keybinds.nix
  ];
}
