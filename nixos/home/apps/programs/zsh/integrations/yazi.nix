{ pkgs, ... }:

{
    imports = [
        ./yazi/config.nix
        ./yazi/plugins.nix
        ./yazi/theme.nix
    ];

    programs.yazi = {

        # Prerequisites
        enable = true;
        enableZshIntegration = true; # Shell integration

        # Previewers
        extraPackages = with pkgs; [
            ffmpegthumbnailer
            ueberzugpp
            file
            poppler
        ];
    };
}
