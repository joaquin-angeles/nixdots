{ config, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
    PATH = "$HOME/.local/bin:$HOME/.cargo/bin:${pkgs.stdenv.cc}/bin:$PATH";
    VISUAL = "nvim";
    GTK_ICON_THEME = "Papirus";
    XDG_ICON_THEME = "Papirus";
    GTK_DECORATION_LAYOUT = ":";
    GIO_EXTRA_MODULES = "${pkgs.gvfs}/lib/gio/modules";
    NIXOS_OZONE_WL = "1";
    NIXPKGS_ALLOW_UNFREE = "1";
    WLR_NO_HARDWARE_URSORS = "1";
  };
}
