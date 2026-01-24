{ ... }:

{
    # User configuration
    home.username = "user";
    home.homeDirectory = "/home/user";
    home.stateVersion = "25.05";

    # System correction
    systemd.user.systemctlPath = "/run/current-system/sw/bin/systemctl";

    # Modules
    imports = [
        # Configurations
        ./home/dotfiles.nix
        ./home/environment.nix # Environment variables

        # Apps
        ./home/apps.nix # Packages
        ./home/apps/theme.nix # Theming

        ./home/apps/programs/zsh.nix
    ];

    # User directories
    xdg.userDirs = {
        enable = true;
        createDirectories = true;
    };
}
