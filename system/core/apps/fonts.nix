{ config, pkgs, inputs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    fontconfig.enable = true;
    fontconfig.antialias = true;
    fontconfig.hinting.enable = true;
    fontconfig.hinting.style = "medium";
    fontconfig.subpixel.rgba = "rgb";
    fontconfig.subpixel.lcdfilter = "default";
    fontDir.enable = true;

    # Fonts
    packages = with pkgs; [
      corefonts
      inter
      nerd-fonts.jetbrains-mono
      nerd-fonts.meslo-lg
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji-blob-bin
    ];
  };
}
