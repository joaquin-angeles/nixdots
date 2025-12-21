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
    ./home/dotfiles.nix
    ./home/environment.nix # Environment variables
    ./home/fonts.nix # Fonts

    # Packages
    ./home/apps/packages.nix # User packages
    ./home/apps/programs.nix # Program configuration

    # Zsh
    ./home/shell/base.nix # Enabling shell and/or shell plugins
    ./home/shell/aliases.nix # Shell aliases
    ./home/shell/functions.nix # Pre-initialization
    # ./home/shell/keybinds.nix
  ];
}
