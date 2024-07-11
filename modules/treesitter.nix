{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      folding = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars;

      settings = {
        indent.enable = true;
      };
    };
  };
}
