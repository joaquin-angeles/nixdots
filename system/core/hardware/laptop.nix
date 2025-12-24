{ config, lib, pkgs, ... }:

{
    # Auto CPU frequency
    services.auto-cpufreq = {
        enable = true;
        settings = {
            battery = {
                governor = "powersave";
                turbo = "never";
            };
            charger = {
                governor = "performance";
                turbo = "auto";
            };
        };
    };

    services.power-profiles-daemon.enable = false; # Disable PPD

    environment.systemPackages = with pkgs; [ acpi ]; # ACPI

    services.thermald.enable = true; # Thermal health

    services.upower.enable = true; # Upower
}
