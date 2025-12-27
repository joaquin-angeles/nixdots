{ pkgs, ... }:

{
    # System packages
    environment.systemPackages = with pkgs; [
        blueman
        brightnessctl
        gtk3
        gtk4
        nautilus
        polkit_gnome
        wl-clipboard
        zenity
    ];
}
