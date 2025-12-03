{
  description = "Joaquin's NixOS";

  # Inputs (repositories)
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05"; # Main branch
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable"; # Unstable branch

    # MangoWC
    mango = {
      url = "github:DreamMaoMao/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Flake parts
    flake-parts.url = "github:hercules-ci/flake-parts";

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Integrations
  outputs = inputs@{ self, nixpkgs, unstable, home-manager, ... }:
    let
      system = "x86_64-linux";
    in {
      nixpkgs.config.allowUnfree = true;
      nixosConfigurations.home = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
          inputs.mango.nixosModules.mango # MangoWC

          # Home manager
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              backupFileExtension = "bak";
              users.joaquin = import ./home.nix;
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs; };
            };
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
