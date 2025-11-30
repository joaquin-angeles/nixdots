{ config, pkgs, ... }:

{
  services.flatpak.packages = [
    "app.zen_browser.zen" # Browser
    "com.github.tchx84.Flatseal" # Flatpak settings
    "com.obsproject.Studio" # Recording software
    "com.spotify.Client" # Music streaming
    "com.vysp3r.ProtonPlus" # Gaming tool installer
    "dev.vencord.Vesktop" # Discord
    "net.lutris.Lutris" # Game library
    "org.chromium.Chromium" # Secondary browser
    "org.gimp.GIMP" # Photo editing
    "org.libreoffice.LibreOffice" # Office suite
  ];
}
