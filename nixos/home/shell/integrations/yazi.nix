{ pkgs, ... }:

{
    programs.yazi = {

        # Prerequisites
        enable = true;
        enableZshIntegration = true;

        # Filetype coloring
        theme = {
            filetype = {
                rules = [
                    { mime = "inode/directory"; fg = "blue"; bold = true; }
                    { name = "*"; is = "orphan"; fg = "red"; }
                    { name = "*"; is = "link"; fg = "cyan"; }
                    { name = "*/"; is = "orphan"; fg = "red"; }
                    { name = "*/"; is = "link"; fg = "cyan"; }
                ];
            };
        };

        # Settings
        settings = {
            log = {
                enabled = false;
            };
            mgr = {
                show_hidden = false;
                sort_dir_first = true;
                ratio = [ 1 4 3 ];
                title_format = "user@nixos-btw: {cwd}";
                show_symlink = true;
            };
        };

        initLua = ../../../../yazi/init.lua; # Extra config

        # Plugins
        plugins = {
            chmod = pkgs.yaziPlugins.chmod;
            full-border = pkgs.yaziPlugins.full-border;
            smart-enter = pkgs.yaziPlugins.smart-enter;
            yatline = pkgs.yaziPlugins.yatline;
        };

        # Previewers
        extraPackages = with pkgs; [
            ffmpegthumbnailer
            ueberzugpp
            file
            poppler
        ];
    };
}
