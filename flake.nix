{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages = rec {
          default = nix-gl-installer;
          nix-gl-installer = pkgs.writeTextFile {
            name = "nix-gl-installer";
            text = builtins.readFile ./nix-gl-installer;
            executable = true;
            destination = "/bin/nix-gl-installer";
          };
        };
      }
    );
}