{ config, lib, pkgs, ... }:

{
  # Packages
  environment.systemPackages = with pkgs; [
    acpi
  ];

  # Power-savers
  # Disable PPD
  services.power-profiles-daemon.enable = false;
  # TLP
  services.tlp.enable = true;
  services.tlp.settings = {
    CPU_SCALING_GOVERNOR_ON_AC = "";
    CPU_SCALING_GOVERNOR_ON_BAT = "";
    CPU_SCALING_DRIVER = "";
  };
  # Auto CPU frequency
  services.auto-cpufreq.enable = true;
  # Upower
  services.upower.enable = true;
}
