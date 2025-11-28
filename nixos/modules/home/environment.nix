{ config, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
    PATH = "$HOME/.local/bin:$HOME/.cargo/bin:${pkgs.stdenv.cc}/bin:$PATH";
    QT_QPA_PLATFORMTHEME = "qt6ct";
    TERM = "xterm-256color";
    VISUAL = "nvim";
    XCURSOR_THEME = "Bibata-Modern-Classic";
    XCURSOR_SIZE = "24";
    GTK_THEME = "Adwaita-Mono:dark";
    GTK_ICON_THEME = "Papirus-Dark";
    XDG_ICON_THEME = "Papirus-Dark";
    GTK_DECORATION_LAYOUT = ":";
    GIO_EXTRA_MODULES = "${pkgs.gvfs}/lib/gio/modules";
    NIXPKGS_ALLOW_UNFREE = "1";
    NIX_SHOW_STATS= "0" ;
  };
}
