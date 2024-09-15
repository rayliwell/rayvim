{ inputs, ... }:
{

  imports = [ inputs.tree-sitter-rstml.nixvimModule ];

  plugins = {
    mdx = {
      enable = true;
    };

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
