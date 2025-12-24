{ config, pkgs, ... }:

{
    # Ripgrep
    programs.ripgrep = {
        enable = true;
        arguments = [ "--hidden" "--glob" "!.git/*" ];
    };
}
