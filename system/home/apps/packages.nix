{ inputs, pkgs, ... }:

{
    # User packages
    home.packages = with pkgs; [
        celluloid
        cliphist
        file-roller
        hyprlock
        hyprpicker
        hyprshot
        imv
        inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
        kdePackages.qt6ct
        kdePackages.qtstyleplugin-kvantum
        lazygit
        libnotify
        libsForQt5.qt5ct
        libsForQt5.qtstyleplugin-kvantum
        mako
        nmgui
        pavucontrol
        ripgrep
        stow
        sunsetr
        swayosd
        unstable.neovim
        waybar
        wbg
        zellij
    ];
}
