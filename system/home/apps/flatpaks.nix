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
}
