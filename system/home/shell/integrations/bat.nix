{ config, pkgs, ... }:

{
    # Bat
    programs.bat = {
        enable = true;
        config.theme = "gruvbox-dark";
        config.style = "numbers";
    };
}
