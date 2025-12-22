{ config, ... }:

{
  home.file.".config/alacritty".source = ../../alacritty;
  home.file.".config/fastfetch".source = ../../fastfetch;
  home.file.".config/hypr".source = ../../hyprland;
  home.file.".config/mako".source = ../../mako;
  home.file.".config/nvim".source = ../../neovim;
  home.file.".config/rofi".source = ../../rofi;
  home.file.".config/swayosd".source = ../../swayosd;
  home.file.".config/waybar".source = ../../waybar;
  home.file.".config/zellij".source = ../../zellij;
  home.file.".p10k.zsh".source = ../../zsh/.p10k.zsh;
  home.file.".zprofile".source = ../../zsh/.zprofile;
}
