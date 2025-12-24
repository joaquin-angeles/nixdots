{ config, ... }:

{
  home.file = { 
    ".config/alacritty".source = ../../alacritty;
    ".config/fastfetch".source = ../../fastfetch;
    ".config/hypr".source = ../../hyprland;
    ".config/Kvantum".source = ../../Qt;
    ".config/mako".source = ../../mako;
    ".config/nvim".source = ../../neovim;
    ".config/rofi".source = ../../rofi;
    ".config/swayosd".source = ../../swayosd;
    ".config/waybar".source = ../../waybar;
    ".config/zellij".source = ../../zellij;
    ".local/share/icons/Papirus".source = ../../icons/Papirus;
    ".zprofile".source = ../../zsh/.zprofile;
  };
}
