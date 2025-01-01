{
  lib,
  pkgs,
  ...
}:
lib.nixvim.plugins.neovim.mkNeovimPlugin {
  name = "lsp-file-operations";
  package = "nvim-lsp-file-operations";

  maintainers = [ ];
}
