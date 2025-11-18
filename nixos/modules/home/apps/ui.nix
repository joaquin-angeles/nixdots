{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bibata-cursors
    foot
    grim
    hyprpicker
    hyprsunset
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum   hyprsunset
    mako
    nwg-look
    waybar
    wbg
    yazi
  ];
}
