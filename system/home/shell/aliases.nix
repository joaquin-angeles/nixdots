{ pkgs, ... }:

{
    programs.zsh.shellAliases = {
        cat = "bat --style=plain";
        grep = "rg";
        ll = "eza  -lh";
        lla = "eza -lha";
        ls = "eza";
        lsa = "eza -a";
        pkg = "nix";
        pkg-add = "nix profile add";
        pkg-list = "nix profile list";
        pkg-ls = "nix profile list";
        pkg-remove = "nix profile remove";
        pkg-rm = "nix profile remove";
        pkg-run = "nix run";
        pkg-search = "nix-search";
        pkg-shell = "nix shell";
        vim = "nvim";
        yazi = "yy";
        yz = "yy";
        zlj = "zellij";
    };
}
