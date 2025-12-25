{ config, pkgs, inputs, ... }:

{
    services.flatpak = {
        enable = true;

        # Installed flatpaks
        packages = [
            "com.github.tchx84.Flatseal" # Flatpak settings
            "com.obsproject.Studio" # Screen recording software
            "com.vysp3r.ProtonPlus" # Games compat tool
            "com.spotify.Client" # Music streaming
            "dev.vencord.Vesktop" # Discord / Communication
            "org.chromium.Chromium" # Progressive web apps
            "org.gimp.GIMP" # Photo editing
            "org.onlyoffice.desktopeditors" # Office suite
        ];

        update.onActivation = true; # Update every rebuild
        update.auto.enable = true; # Scheduled updating
    };

    # Activate fonts for Flatpaks
    home.activation.flatpakFontInit = config.lib.dag.entryAfter ["writeBoundary"] ''
        $DRY_RUN_CMD mkdir -p $HOME/.local/share/fonts
        $DRY_RUN_CMD ln -sfn /run/current-system/sw/share/X11/fonts/* $HOME/.local/share/fonts/
        $DRY_RUN_CMD ${pkgs.fontconfig}/bin/fc-cache -fv
    '';

    # Active GTK theming for Flatpaks
    home.activation.flatpakGtkTheme = config.lib.dag.entryAfter ["writeBoundary"] ''
        $DRY_RUN_CMD mkdir -p $HOME/.local/share/themes
        $DRY_RUN_CMD ln -sfn ${pkgs.gruvbox-gtk-theme}/share/themes/* $HOME/.local/share/themes/
    '';
}
