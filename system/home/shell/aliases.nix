{ pkgs, ... }:

{
    programs.zsh.shellAliases = {
        cat = "bat --style=plain";
        grep = "rg";
        ll = "eza  -lh";
        lla = "eza -lha";
        ls = "eza";
        lsa = "eza -a";
        vim = "nvim";
        yazi = "yy";
        yz = "yy";
        zlj = "zellij";
    };
}
