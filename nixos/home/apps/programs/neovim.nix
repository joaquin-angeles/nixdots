{ pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        package = unstable.neovim-unwrapped;
        defaultEditor = true;
        viAlias = true;

        extraPackages = with pkgs.unstable; [ tree-sitter ];
    };
}
