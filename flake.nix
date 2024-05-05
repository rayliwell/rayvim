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
      neovim-nightly-overlay,
      nixvim,
      neogit,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        neovimOverlay = neovim-nightly-overlay.overlay;
        pkgs = nixpkgs.legacyPackages.${system}.extend neovimOverlay;
      in
      {
        packages = {
          default = nixvim.legacyPackages.${system}.makeNixvimWithModule {
            inherit pkgs;
            module = (import ./.);

            extraSpecialArgs = {
              inherit neogit;

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
