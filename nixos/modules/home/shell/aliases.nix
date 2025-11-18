{ config, pkgs, ... }:

{
  programs.zsh.shellAliases = {
    bat = "bat --color=always --theme=base16 --style=plain";
    c = "clear";
    grep = "rg";
    k = "kill";
    lsa = "eza -a";
    ll = "eza -lh";
    lla = "eza -lha";
    ls = "eza";
    nv = "nvim";
    pk = "pkill";
    v = "nvim";
    vim = "nvim";
    "nix-shell" = "nix-shell --run $SHELL";
    yazi = "yz";
  };
}
