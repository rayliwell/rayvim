{
  description = "My neovim setup.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    nixvim = {
      url = "github:nix-community/nixvim";
    };

    nvim-lsp-file-operations = {
      url = "github:antosha417/nvim-lsp-file-operations";
      flake = false;
    };

    tailwind-tools = {
      url = "github:luckasRanarison/tailwind-tools.nvim";
      flake = false;
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
        module = import ./.;
        overlays = import ./overlays.nix inputs;

        pkgs = import nixpkgs {
          inherit system;
          overlays = with overlays; [
            nvim-lsp-file-operations
            tailwind-tools
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
