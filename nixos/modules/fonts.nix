{ config, pkgs, ... }:

{
  fonts.fontconfig.fonts = with pkgs; [
    inter
    noto-fonts-cjk-sans
    noto-fonts-emoji-blob-bin
    nerd-fonts.jetbrains-mono
    nerd-fonts.meslo-lg
  ];
}
