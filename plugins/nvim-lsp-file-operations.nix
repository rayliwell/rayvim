{
  lib,
  ...
}:
lib.nixvim.neovim-plugin.mkNeovimPlugin {
  name = "lsp-file-operations";
  package = "nvim-lsp-file-operations";

  maintainers = [ ];
}
