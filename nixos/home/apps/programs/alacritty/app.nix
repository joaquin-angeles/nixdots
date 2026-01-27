{ ... }:

{
    imports = [
        ./alacritty/settings.nix # Settings
        ./alacritty/theme.nix    # Gruvbox material
    ];

    programs.alacritty.enable = true; # Install
}
