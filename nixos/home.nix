{ config, pkgs, ... }:

{
  # User configuration
  home.username = "joaquin";
  home.homeDirectory = "/home/joaquin";
  home.stateVersion = "25.05";

  # Modules
  imports = [
    # Configurations
    ./modules/home/dotfiles.nix
    ./modules/home/environment.nix

    # Packages
    ./modules/home/apps/fonts.nix
    ./modules/home/apps/packages.nix
    ./modules/home/apps/programs.nix

    # Zsh
    ./modules/home/shell/base.nix
    ./modules/home/shell/aliases.nix
    ./modules/home/shell/functions.nix
    ./modules/home/shell/keybinds.nix
  ];
}
