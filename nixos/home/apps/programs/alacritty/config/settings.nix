{ ... }:

{
    programs.alacritty = {
        # Config / alacritty.toml
        settings = {
            # Fonts' config
            font.size = 13.5;

            # Environment variables
            env = {
                TERM = "xterm-256color";
                FZF_DEFAULT_OPTS = "--color=bg:,bg+:#4d5051,fg:#d4be98,fg+:#d4be98,hl:#a9b665,hl+:#a9b665,info:#7daea3,prompt:#d3869b,pointer:#a9b665,marker:#ea6962,spinner:#d8a657,header:#89b482,border:#4d5051"; # fzf theming
            };
        };
    };
}
