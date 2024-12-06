{
  description = "redhotvengeance does nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    rose-pine-hyprcursor.url = "github:ndom91/rose-pine-hyprcursor";
    ghostty.url = "git+ssh://git@github.com/ghostty-org/ghostty";
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    nixos-hardware,
    rose-pine-hyprcursor,
    ghostty,
    ...
  } @ inputs: let
    inherit (self) outputs;
  in {
    nixosConfigurations = {
      lflinux = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/lflinux/configuration.nix
          nixos-hardware.nixosModules.framework-13-7040-amd

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ian = import ./hosts/lflinux/home.nix;
            home-manager.extraSpecialArgs = {
              pkgs = import nixpkgs {
                system = "x86_64-linux";
                config.allowUnfree = true;
              };
              unstable = import nixpkgs-unstable {
                system = "x86_64-linux";
                config.allowUnfree = true;
                overlays = [(final: prev: {
                  rofi-calc = prev.rofi-calc.override { rofi-unwrapped = prev.rofi-wayland-unwrapped; };
                })];
              };

              ghostty = ghostty;

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
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/vali/configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ian = import ./hosts/vali/home.nix;
            home-manager.extraSpecialArgs = {
              pkgs = import nixpkgs {
                system = "x86_64-linux";
                config.allowUnfree = true;
              };
              unstable = import nixpkgs-unstable {
                system = "x86_64-linux";
                config.allowUnfree = true;
              };

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
        specialArgs = { inherit inputs; };

        extraSpecialArgs = {
          pkgs = import nixpkgs {
            system = "x86_64-linux";
            config.allowUnfree = true;
          };
          unstable = import nixpkgs-unstable {
            system = "x86_64-linux";
            config.allowUnfree = true;
            overlays = [(final: prev: {
              rofi-calc = prev.rofi-calc.override { rofi-unwrapped = prev.rofi-wayland-unwrapped; };
            })];
          };

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
