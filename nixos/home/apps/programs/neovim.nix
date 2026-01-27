{ pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        package = pkgs.unstable.neovim-unwrapped; # Use custom wrapper
        defaultEditor = true; # Set as default
        vimAlias = true; # Fast alias

        extraPackages = with pkgs.unstable; [ tree-sitter ]; # Install tree-sitter-cli
    };
}
