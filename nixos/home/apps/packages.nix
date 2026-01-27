{ pkgs, ... }:

{
    imports = [ ./media.nix ];

    # User packages
    home.packages = with pkgs; [
        cliphist
        file-roller
        hypridle
        hyprlock
        hyprpicker
        hyprshot
        mako
        nautilus 
        ripgrep
        stow
        sunsetr
        swayosd
        unstable.impala
        waybar
        wbg
        zellij
    ];
}
