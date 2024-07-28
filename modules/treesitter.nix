{ inputs, ... }:
{

  imports = [ inputs.tree-sitter-rstml.nixvimModule ];

  plugins = {
    ts-autotag = {
      enable = true;
    };

    treesitter = {
      enable = true;
      folding = true;

      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };
  };
}
