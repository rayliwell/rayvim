{
  lib,
  ...
}:
lib.nixvim.plugins.neovim.mkNeovimPlugin {
  name = "tailwind-tools";
  package = "tailwind-tools";

  maintainers = [ ];
}
