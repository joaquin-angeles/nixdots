{ config, pkgs, ... }:

{
  fonts.fontconfig.enable = true; # Enable fontconfig

  # Default fonts
  fonts.fontconfig.defaultFonts = {
    sansSerif = [ "Inter" ];
    monospace = [ "JetBrains Mono Nerd Font Mono" ];
    emoji     = [ "Noto Color Emoji" ];
    serif     = [ "Noto Serif CJK" ];
  };

  # Font packages
  home.packages = with pkgs; [
    inter
    noto-fonts-cjk-sans
    noto-fonts-emoji-blob-bin
    nerd-fonts.jetbrains-mono
    nerd-fonts.meslo-lg
  ];
}
