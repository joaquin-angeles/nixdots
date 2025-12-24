{ config, ... }:

{
    home.file = { 
        ".local/bin/battery-alert".source = ../../../scripts/battery-alert;
        ".local/bin/cheatsheet.sh".source = ../../../scripts/cheatsheet.sh;
        ".local/bin/power-menu".source = ../../../scripts/power-menu;
        ".local/bin/power-saver".source = ../../../scripts/power-saver;
    };
}
