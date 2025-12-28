{ config, pkgs, ... }:

{
    imports = [
        ./programs/alacritty.nix
        ./programs/btop.nix
        # ./programs/lutris.nix
        ./programs/rofi.nix
    ];

    programs.nh.enable = true; # NH
}
