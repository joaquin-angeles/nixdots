{ pkgs, ... }:

{
    # powerManagement.powertop.enable = true; # Powertop

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

    # Extra packages
    environment.systemPackages = with pkgs; [
        # powertop
    ]; 

    services.upower.enable = true; # Upower
}
