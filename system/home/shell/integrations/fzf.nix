{ config, pkgs, ... }:

{
    # fzf integration
    programs.fzf = {
        enable = true;
        enableZshIntegration = true;
    };
}
