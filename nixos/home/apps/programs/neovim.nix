{ pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        package = pkgs.unstable.neovim-unwrapped;
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;

        extraPackages = with pkgs.unstable; [ tree-sitter ];
    };
}
