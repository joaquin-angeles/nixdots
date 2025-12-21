{ config, lib, pkgs, ... }:

{
  # ❌ nouveau
  boot = {
    blacklistedKernelModules = [ "nouveau" ];
  };

  # Load Nvidia drivers 
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.finegrained = true;
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
  
  # Offloading
  hardware.nvidia.prime = {
    offload = {
      enable = true;
      enableOffloadCmd = true;
    };
    nvidiaBusId = "PCI:1:0:0";
    amdgpuBusId = "PCI:5:0:0";
  };
}
