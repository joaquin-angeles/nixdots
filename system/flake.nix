{
    description = "Joaquin's Gruvy Nix";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11"; # Stable nixpkgs
        unstable.url = "github:NixOS/nixpkgs/nixos-unstable"; # Rolling nixpkgs

        # Home manager
        home-manager = {
            url = "github:nix-community/home-manager/release-25.11";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        # Zen Browser
        zen-browser = {
            url = "github:youwen5/zen-browser-flake";
            inputs.nixpkgs.follows = "unstable";
        };
    };

    # Main integrations
    outputs = inputs@{ self, nixpkgs, unstable, home-manager, zen-browser, ... }: {
        # Imported configurations
        nixosConfigurations.nixos-btw = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = { inherit inputs; };
            modules = [
                ./configuration.nix # System configuration

                # User configuration
                home-manager.nixosModules.home-manager
                {
                    nixpkgs.config.allowUnfree = true; # Allow proprietary
                    home-manager = {
                        backupFileExtension = "bak"; # Fallback for existing files
                        users.user = import ./home.nix; # Main configuration file
                        useGlobalPkgs = true; # Merge into packages
                        useUserPackages = true; # Utilize per-user package installation
                        extraSpecialArgs = { inherit inputs; }; # Accept inputs 
                    };
                }

                # Package overlays
                {
                    nixpkgs.overlays = [
                        (final: prev: {
                            # Overlay the unstable input
                            unstable = import inputs.unstable {
                                inherit (prev.stdenv.hostPlatform) system;
                                config = prev.config;
                            };
                        })
                    ];
                }
            ];
        };
    };
}
