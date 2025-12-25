{ config, pkgs, inputs, ... }:

{
    services.flatpak = {
        enable = true;

        packages = [
            "com.github.tchx84.Flatseal"
            "com.obsproject.Studio"
            "com.vysp3r.ProtonPlus"
            "dev.vencord.Vesktop"
            "org.chromium.Chromium"
            "org.gimp.GIMP"
            "org.onlyoffice.desktopeditors"
        ];

        update.onActivation = true;
        update.auto.enable = true;
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
