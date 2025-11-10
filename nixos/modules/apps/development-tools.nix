{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    autoconf
    automake
    bison
    git
    gettext
    gnumake
    groff
    libtool
    m4
    patch
    pkgconf
    texinfo
  ];
}
