{ config, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
    PATH = "$HOME/.local/bin:$HOME/.cargo/bin:${pkgs.stdenv.cc}/bin:$PATH";
    VISUAL = "nvim";
    GTK_THEME = "Adwaita-Mono:dark";
    GTK_ICON_THEME = "Papirus-Dark";
    XDG_ICON_THEME = "Papirus-Dark";
    GTK_DECORATION_LAYOUT = ":";
    GIO_EXTRA_MODULES = "${pkgs.gvfs}/lib/gio/modules";
    NIXPKGS_ALLOW_UNFREE = "1";
  };
}
