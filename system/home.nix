{ config, pkgs, inputs,  ... }:

{
    # User configuration
    home.username = "user";
    home.homeDirectory = "/home/user";
    home.stateVersion = "25.05";

    # Cursor theming
    home.pointerCursor = {
        gtk.enable = true;
        x11.enable = true; # XWayland cursor theming
        package = pkgs.bibata-cursors; # Cursor package
        name = "Bibata-Modern-Classic"; # Cursor theme
        size = 24;
    };

    gtk = {
        enable = true;
        theme = {
            package = pkgs.gruvbox-gtk-theme;
            name = "Gruvbox-Dark";
        };

        # Enable dark theme
        gtk3.extraConfig = {
            gtk-application-prefer-dark-theme = true;
        };
        gtk4.extraConfig = {
            gtk-application-prefer-dark-theme = true;
        };
    };

    # Qt theming
    qt = {
        enable = true;
        platformTheme.name = "qtct";
        style = {
            name = "kvantum-dark";
        };
    };

    # Modules
    imports = [
        # Configurations
        ./home/dotfiles.nix
        ./home/environment.nix # Environment variables

        ./home/apps.nix # Packages

        ./home/shell.nix # Shell configuration (zsh)
    ];

    xdg.configFile."gtk-4.0/gtk.css".force = true;
    xdg.configFile."gtk-4.0/settings.ini".force = true;
}
