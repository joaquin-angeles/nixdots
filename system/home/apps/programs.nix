{ config, pkgs, ... }:

{
    # Lutris
    programs.lutris = {
        enable = true;
        protonPackages = with pkgs; [ unstable.proton-ge-bin ]; # Windows games

        # Patches
        package = pkgs.lutris.override {
            extraPkgs =  with pkgs; [
                libayatana-appindicator
                libappindicator-gtk3
            ];
        };

        # Extra libraries
        extraPackages = with pkgs; [
            gamemode
            gamescope # Micro-compositor
            mangohud # FPS counter
            umu-launcher # Steam libraries
        ];
    };

    # Rofi
    programs.rofi = {
        enable = true;
        plugins = [ pkgs.rofi-emoji ];
    };

    # Btop
    programs.btop = {
        enable = true;

        # Theming settings
        settings = {
            color_theme = "gruvbox_dark_v2"; # Preferred colorscheme
            theme_background = false; # Enable transparency
        };
    };

    programs.nh.enable = true; # NH
}
