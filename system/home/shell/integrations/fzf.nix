{ config, pkgs, ... }:

{
    # fzf integration
    programs.fzf = {
        enable = true;
        enableZshIntegration = true;
        colors = {
            "bg"      = "";
            "bg+"     = "#3c3836";
            "fg"      = "#d4be98";
            "fg+"     = "#d4be98";
            "hl"      = "#d8a657";
            "hl+"     = "#d8a657";
            "info"    = "#7daea3";
            "prompt"  = "#d3869b";
            "pointer" = "#a9b665";
            "marker"  = "#d4be98";
            "spinner" = "#d8a657";
            "header"  = "#89b482";
            "border"  = "#3c3836";
        };
    };
}
