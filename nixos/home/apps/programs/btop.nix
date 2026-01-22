{ ... }:

{
    # Btop
    programs.btop = {
        enable = true;

        # Theming settings
        settings = {
            color_theme = "gruvbox_dark_v2"; # Preferred colorscheme
            theme_background = false; # Enable transparency
        };
    };
}
