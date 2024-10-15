{
  description = "redhotvengeance does nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    rose-pine-hyprcursor.url = "github:ndom91/rose-pine-hyprcursor";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixos-hardware,
    ...
  } @ inputs: let
    inherit (self) outputs;
  in {
    nixosConfigurations = {
      lflinux = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/lflinux/configuration.nix
          nixos-hardware.nixosModules.framework-13-7040-amd

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ian = import ./hosts/lflinux/home.nix;
            home-manager.extraSpecialArgs = {
              host = {
                comp = "hyprland";
                dotfiles = "/home/ian/dotfiles";
                hostname = "lflinux";
                system = "x86_64-linux";
              };
            };
          }
        ];
      };
      vali = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/vali/configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ian = import ./hosts/vali/home.nix;
            home-manager.extraSpecialArgs = {
              host = {
                dotfiles = "/home/ian/dotfiles";
                hostname = "vali";
                system = "x86_64-linux";
              };
            };
          }
        ];
      };
    };

    homeConfigurations = {
      "ilollar@ilollar3" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; };
        extraSpecialArgs = {
          inherit inputs outputs;
          host = {
            comp = "sway";
            dotfiles = "/home/ilollar/dotfiles";
            hostname = "ilollar3";
            system = "x86_64-linux";
          };
        };
        modules = [ ./hosts/ilollar3/home.nix ];
      };
    };
  };
}
