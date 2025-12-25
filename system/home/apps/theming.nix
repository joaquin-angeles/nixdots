{ inputs, config, pkgs,  ... }:

{
    # Cursor theming
    home.pointerCursor = {
        gtk.enable = true;
        x11.enable = true; # XWayland cursor theming
        package = pkgs.bibata-cursors; # Cursor package
        name = "Bibata-Modern-Ice"; # Cursor theme
        size = 24;
    };

    # Icon theme
    home.file.".local/share/icons/Papirus".source = ../../../icons/Papirus;
    home.file."Pictures/backgrounds".source = ../../../backgrounds;

    # GTK theming
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
    };
    dconf = {
        enable = true;
        settings = {
            "org/gnome/desktop/interface" = {
                "color-scheme" = "prefer-dark";
            };
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

    xdg.configFile."gtk-4.0/gtk.css".force = true;
    xdg.configFile."gtk-4.0/settings.ini".force = true;
}
