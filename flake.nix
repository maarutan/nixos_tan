{
  description = "nixos_tan configuration";

  inputs = {
    nixpkgs_unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    grub2-themes = {
      url = "github:vinceliuice/grub2-themes";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs_unstable,
    grub2-themes,
    home-manager,
    ...
  } @ inputs: let
    user = "maaru";

    hosts = [
      {
        hostname = "iron_AsusTufGamingA15";
        system = "x86_64-linux";
        stateVersion = "25.05";
      }
    ];

    makeSystem = {
      hostname,
      system,
      stateVersion,
    }:
      nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs user hostname stateVersion;
        };
        modules = [
          ./hosts/${hostname}/configuration.nix
          grub2-themes.nixosModules.default
        ];
      };
  in {
    nixosConfigurations =
      nixpkgs.lib.foldl' (
        acc: host:
          acc
          // {
            ${host.hostname} = makeSystem {
              inherit (host) hostname system stateVersion;
            };
          }
      ) {}
      hosts;

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = {
        inherit inputs user;
        homeStateVersion = "25.05";
        nixpkgs_unstable = inputs.nixpkgs_unstable.legacyPackages.x86_64-linux;
      };
      modules = [
        ./home_manager/home.nix
      ];
    };
  };
}
