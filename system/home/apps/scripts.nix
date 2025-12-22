{ config, ... }:

{
  home.file.".local/bin/battery-alert".source = ../../scripts/battery-alert;
  home.file.".local/bin/cheatsheet.rasi".source = ../../scripts/cheatsheet.rasi;
  home.file.".local/bin/cheatsheet.sh".source = ../../scripts/cheatsheet.sh;
  home.file.".local/bin/power-menu".source = ../../scripts/power-menu;
  home.file.".local/bin/power-saver".source = ../../scripts/power-saver;
}
