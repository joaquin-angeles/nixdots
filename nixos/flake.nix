{
  description = "Joaquin's NixOS";

  # Repositories
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05"; # Main branch
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable"; # Unstable branch
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest"; # Flatpaks
    
    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  # Integrations
  outputs = { self, nixpkgs, unstable, home-manager, ... }:
    let
      system = "x86_64-linux";
    in {
      nixpkgs.config.allowUnfree = true;
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
            home-manager.backupFileExtension = "bak";
          }

          # Overlays
          ({ pkgs, ... }: {
            nixpkgs.overlays = [
              (final: prev: {
                unstable = import unstable {
                  system = pkgs.system;
                };
              })
            ];
          })
        ];
      };
    };
}
