{ config, ... }:

{
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
}
