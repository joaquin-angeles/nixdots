{ pkgs, ... }:

{
    # System packages
    environment.systemPackages = with pkgs; [
        blueman
        brightnessctl
        gtk3
        gtk4
        polkit_gnome
        wl-clipboard
        zenity
    ];
}
