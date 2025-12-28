{ config, lib, ... }:

{
    xdg.configFile = {
        # "alacritty".source = ../../alacritty;
        "fastfetch".source = ../../fastfetch;
        "hypr".source = ../../hyprland;
        "Kvantum".source = ../../Qt;
        "mako".source = ../../mako;
        "nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.files/neovim";
        "rofi".source = ../../rofi;
        # "swayosd".source = ../../swayosd;
        "waybar".source = ../../waybar;
        "zellij".source = ../../zellij;
    };
}
