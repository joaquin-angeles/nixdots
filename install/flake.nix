{
  description = "NyxOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11"; # Stable nixpkgs
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable"; # Rolling nixpkgs

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Main integrations
  outputs = inputs@{ self, nixpkgs, unstable, home-manager, ... }: {
    # Imported configurations
    nixosConfigurations.nyxos = nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix # System configuration

        # User configuration
        home-manager.nixosModules.home-manager
        {
          nixpkgs.config.allowUnfree = true; # Allow proprietary
          home-manager = {
            backupFileExtension = "bak"; # Fallback for existing files
            users.joaquin = import ./home.nix; # Main configuration file
            useGlobalPkgs = true; # Merge into packages
            useUserPackages = true; # Utilize per-user package installation
          };
        }

        # Package overlays
        ({ pkgs, ... }: {
          nixpkgs.overlays = [
            (final: prev: {
              # Unstable (rolling) package integration
              unstable = import unstable {
                system = pkgs.stdenv.hostPlatform.system;
              };
            })
          ];
        })
      ];
    };
  };
}
