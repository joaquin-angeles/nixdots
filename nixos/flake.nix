{
  description = "Joaquin's NixOS";

  # Repositories
  inputs = {
    # Main branch
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    
    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Software store
    nix-software-center.url = "github:snowfallorg/nix-software-center";

    # Unstable branch
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  # Integrations
  outputs = { self, nixpkgs, unstable, home-manager, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.home = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix

          # Home manager
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.joaquin = import ./home.nix;
            home-manager.backupFileExtension = "backup";
          }

          # Overlays
          ({ pkgs, ... }: {
            nixpkgs.overlays = [
              (final: prev: {
                unstable = import unstable {
                  system = pkgs.system;
                  config.allowUnfree = true;
                };
              })
            ];
          })
        ];
      };
    };
}
