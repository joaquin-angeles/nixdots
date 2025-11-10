{ config, pkgs, ... }:

{
  # fzf
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # rofi
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    plugins = [ pkgs.rofi-emoji ];
  };

  # zoxide
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
