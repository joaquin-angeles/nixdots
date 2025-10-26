{ config, pkgs, ... }:

{
  programs.zsh.shellAliases = {
    bat = "bat --color=always --theme=base16 --style=plain";
    c = "clear";
    grep = "rg";
    k = "kill";
    lsa = "eza -a";
    ll = "eza -l";
    lla = "eza -la";
    ls = "eza";
    "nv-run" = "__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia";
    pk = "pkill";
    vim = "nvim";
    v = "nvim";
    "nix-shell" = "nix-shell --run $SHELL";
    yazi = "yzcd";
    yz = "yzcd";
  };
}
