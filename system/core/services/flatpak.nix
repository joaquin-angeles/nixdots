{ config, lib, pkgs, ... }:

{
    services.flatpak.enable = true;
    systemd.services.flatpak-repo = {
        wantedBy = [ "multi-user.target" ];
        path = [ pkgs.flatpak ];
        script = ''
            flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            flatpak --user remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
        '';
    };
}
