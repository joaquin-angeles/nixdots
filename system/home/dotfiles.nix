{ config, ... }:

{
  home.file = { 
    ".config/alacritty".source = ../../alacritty;
    ".config/fastfetch".source = ../../fastfetch;
    ".config/hypr".source = ../../hyprland;
    ".config/Kvantum".source = ../../themes/Kvantum;
    ".config/mako".source = ../../mako;
    ".config/nvim".source = ../../neovim;
    ".config/rofi".source = ../../rofi;
    ".config/swayosd".source = ../../swayosd;
    ".config/waybar".source = ../../waybar;
    ".config/zellij".source = ../../zellij;
    ".local/share/themes/Adwaita-Mono".source = ../../themes/Adwaita-Mono;
    ".p10k.zsh".source = ../../zsh/.p10k.zsh;
    ".zprofile".source = ../../zsh/.zprofile;
  };
}
