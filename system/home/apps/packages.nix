{ pkgs, ... }:

{
    # User packages
    home.packages = with pkgs; [
        adw-gtk3
        celluloid
        cliphist
        file-roller
        hypridle
        hyprlock
        hyprpicker
        hyprshot
        imv
        kdePackages.qt6ct
        kdePackages.qtstyleplugin-kvantum
        lazygit
        libnotify
        libsForQt5.qt5ct
        libsForQt5.qtstyleplugin-kvantum
        mako
        nautilus 
        nwg-look
        ripgrep
        stow
        sunsetr
        swayosd
        unstable.impala
        unstable.neovim
        unstable.wiremix
        waybar
        wbg
        zellij
    ];
}
