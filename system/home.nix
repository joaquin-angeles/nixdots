{ config, ... }:

{
    # User configuration
    home.username = "user";
    home.homeDirectory = "/home/user";
    home.stateVersion = "25.05";

    # Modules
    imports = [
        # Configurations
        ./home/dotfiles.nix
        ./home/environment.nix # Environment variables

        # Apps
        ./home/apps.nix # Packages
        ./home/apps/theming.nix # Theming

        ./home/shell.nix # Shell configuration (zsh)
    ];

    # User directories
    xdg.userDirs = {
        enable = true;
        desktop     = "${config.home.homeDirectory}/Desktop";
        documents   = "${config.home.homeDirectory}/Documents";
        download    = "${config.home.homeDirectory}/Downloads";
        music       = "${config.home.homeDirectory}/Music";
        pictures    = "${config.home.homeDirectory}/Pictures";
        videos      = "${config.home.homeDirectory}/Videos";
        publicShare = "${config.home.homeDirectory}/Public";
        templates   = "${config.home.homeDirectory}/Templates";
        createDirectories = true;
    };
}
