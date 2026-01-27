{ config, ... }:

{
    xdg.configFile = {
        "hypr".source = ../../hypr;
        "Kvantum".source = ../../qt;
        "mako".source = ../../mako;
        "nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.files/neovim";
        "rofi".source = ../../rofi;
        "waybar".source = ../../waybar;
        "zellij".source = ../../zellij;
    };
}
