{
  pkgs,
  config,
  helpers,
  ...
}:
helpers.neovim-plugin.mkNeovimPlugin config {
  name = "lsp-file-operations";
  originalName = "lsp-file-operations";
  defaultPackage = pkgs.vimPlugins.nvim-lsp-file-operations;

  maintainers = [ ];
}
