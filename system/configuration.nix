{ config, lib, pkgs, ... }:

{
  # Modules
  imports = [
    ./core/apps/development-tools.nix
    ./core/apps/fonts.nix
    ./core/apps/packages.nix
    ./core/apps/programs.nix
    ./core/hardware/laptop.nix
    ./core/hardware/nvidia.nix
    ./core/services/networking.nix
    ./core/services/services.nix
    /etc/nixos/hardware-configuration.nix
  ];

  # Boot options
  boot.kernelModules = [ "zram" ];
  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
  };

  # Enable XDG portals
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];

    config = {
      common.default = [ "gtk" ];
      hyprland.preferred = [ "hyprland" "gtk" ];
    };
  };
  environment.pathsToLink = [ "/share/xdg-desktop-portal" "/share/applications" ];

  # Hardware settings
  hardware.graphics = {
    enable = true; 
    enable32Bit = true;
  };

  # Nix package manager
  nix.optimise.automatic = true;
  nix.settings = {
    auto-optimise-store = true;
    experimental-features = [ "nix-command" "flakes" ];
  };
  nixpkgs.config.allowUnfree = true;

  # System version
  system.stateVersion = "25.05";

  # Timezone
  time.timeZone = "Asia/Manila";
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocales = [ "en_GB.UTF-8/UTF-8" ];
    extraLocaleSettings = {
      LC_TIME = "en_GB.UTF-8";
    };
  };

  # sudo-rs
  security.sudo.enable = false;
  security.sudo-rs.enable = true;

  # User configuration
  users.users.user = {
    extraGroups = [ "wheel" ];
    isNormalUser = true;
    shell = pkgs.zsh;
  };

  # Zram
  zramSwap = {
    algorithm = "zstd";
    enable = true;
    memoryPercent = 50;
    priority = 50;
    swapDevices = 1;
  };
}
