{ inputs, pkgs, ... }:

{
    # User packages
    home.packages = with pkgs; [
        alacritty
        btop
        celluloid
        cliphist
        file-roller
        gruvbox-kvantum
        hyprlock
        hyprpicker
        hyprshot
        impala
        imv
        inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
        kdePackages.qt6ct
        kdePackages.qtstyleplugin-kvantum
        lazygit
        libnotify
        libsForQt5.qt5ct
        libsForQt5.qtstyleplugin-kvantum
        mako
        ripgrep
        stow
        sunsetr
        swayosd
        unstable.neovim
        waybar
        wbg
        wiremix
        zellij
    ];
}
