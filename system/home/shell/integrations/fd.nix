
{ config, pkgs, ... }:

{
    # FD
    programs.fd = {
        enable = true;
        hidden = true;
        extraOptions = [ "--color=always" ];
    };
}
