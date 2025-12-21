{ pkgs, ... }:

{
  programs.zsh.shellAliases = {
    bat = "bat --color=always --theme=base16";
    cat = "bat --color=always --theme=base16 --style=plain";
    grep = "rg";
    ll = "eza  -lh --icons";
    lla = "eza -lha --icons";
    ls = "eza --icons";
    lsa = "eza -a --icons";
    vim = "nvim";
    yz = "yazi";
    zlj = "zellij";
  };
}
