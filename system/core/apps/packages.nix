{ config, lib, pkgs, ... }:

{
    # System packages
    environment.systemPackages = with pkgs; [
        base16-schemes
        brightnessctl
        gtk3
        gtk4
        nautilus
        nix-search-cli
        polkit_gnome
        unstable.bluetui
        wl-clipboard
        zenity
    ];
}
