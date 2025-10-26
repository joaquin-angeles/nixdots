{ config, pkgs, ... }:

{
  # User configuration
  home.username = "joaquin";
  home.homeDirectory = "/home/joaquin";
  home.stateVersion = "25.05";

  # Configurations
  home.file.".config/foot".source = ../foot;
  home.file.".config/hypr".source = ../hyprland;
  home.file.".config/mako".source = ../mako;
  home.file.".config/nvim".source = ../neovim;
  home.file.".p10k.zsh".source = ../zsh/.p10k.zsh;
  home.file.".config/rofi".source = ../rofi;
  home.file.".config/Kvantum".source = ../kvantum;
  home.file.".config/swayosd".source = ../swayosd;
  home.file.".config/tmux".source = ../tmux;
  home.file.".config/waybar".source = ../waybar;
  home.file.".zprofile".source = ../zsh/.zprofile;

  # Modules
  imports = [
    ./modules/home-packages.nix
    ./modules/environment.nix
    ./modules/home/packages.nix
    ./modules/home/programs/fzf.nix
    ./modules/home/programs/rofi.nix
    ./modules/home/programs/zoxide.nix
    ./modules/home/programs/zsh/base.nix
    ./modules/home/programs/zsh/aliases.nix
    ./modules/home/programs/zsh/functions.nix
    ./modules/home/programs/zsh/keybinds.nix
  ];
}
