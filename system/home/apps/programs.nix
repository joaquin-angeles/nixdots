{ config, pkgs, ... }:

{
    imports = [
        ./programs/alacritty.nix
        ./programs/btop.nix
        # ./programs/lutris.nix
        ./programs/rofi.nix
    ];
    programs.home-manager.enable = true; # Home Manager
    programs.nh.enable = true; # NH
}
