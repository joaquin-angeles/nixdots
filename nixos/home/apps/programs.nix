{ config, pkgs, ... }:

{
    imports = [
        ./programs/alacritty/package.nix
        ./programs/btop.nix
        ./programs/neovim.nix
        ./programs/lutris.nix
        ./programs/rofi.nix
    ];

    programs.home-manager.enable = true; # Home Manager
    programs.nh.enable = true; # NH
}
