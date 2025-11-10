{ config, lib, pkgs, ... }:

{
  # Kernel modules
  boot = {
    blacklistedKernelModules = [ "nouveau" ];
    kernelModules = [ "nvidia" "nvidia_uvm" "nvidia_drm" ];
  };

  # Prerequisites
  hardware.graphics = {
    enable = true; 
    enable32Bit = true;
  };

  # Load Nvidia drivers 
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}
