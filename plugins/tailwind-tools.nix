{
  pkgs,
  config,
  helpers,
  ...
}:
helpers.neovim-plugin.mkNeovimPlugin config {
  name = "tailwind-tools";
  originalName = "tailwind-tools";
  defaultPackage = pkgs.vimPlugins.tailwind-tools;

  maintainers = [ ];
}
