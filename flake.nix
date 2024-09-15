{
  description = "My neovim setup.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    tree-sitter-rstml = {
      url = "github:rayliwell/tree-sitter-rstml/flake";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
    };

    nvim-lsp-file-operations = {
      url = "github:antosha417/nvim-lsp-file-operations";
      flake = false;
    };

    mdx = {
      url = "github:davidmh/mdx.nvim";
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
      tree-sitter-rstml,
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
          config = {
            allowUnfree = true;
          };
          overlays = with overlays; [
            mdx
            tailwind-tools
            nvim-lsp-file-operations
          ];
        };
      in
      {
        packages = {
          default = nixvim.legacyPackages.${system}.makeNixvimWithModule {
            inherit pkgs;
            inherit module;

            extraSpecialArgs = rec {
              inherit inputs;
              inherit system;

              luaFunction = code: ''
                function()
                  ${code}
                end
              '';

              openExternalProgram = program: (luaFunction "openExternalProgram(\"${program}\")");
            };
          };
        };
      }
    );
}
