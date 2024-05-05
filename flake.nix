{
  description = "My neovim setup.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";

    neogit = {
      url = "github:NeogitOrg/neogit/nightly";
      flake = false;
    };

    neovim-session-manager = {
      url = "github:Shatur/neovim-session-manager";
      flake = false;
    };

    neovim-project = {
      url = "github:coffebar/neovim-project";
      flake = false;
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      nixvim,
      ...
    }@inputs:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        overlays = import ./overlays.nix inputs;
        module = import ./.;

        pkgs = import nixpkgs {
          inherit system;
          overlays = with overlays; [
            neovim-nightly
            neogit-nightly
            neovim-project
            neovim-session-manager
          ];
        };
      in
      {
        packages = {
          default = nixvim.legacyPackages.${system}.makeNixvimWithModule {
            inherit pkgs;
            inherit module;

            extraSpecialArgs = {
              luaFunction = code: ''
                function()
                  ${code}
                end
              '';
            };
          };
        };
      }
    );
}
