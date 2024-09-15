{
  pkgs,
  config,
  helpers,
  ...
}:
helpers.neovim-plugin.mkNeovimPlugin config {
  name = "mdx";
  originalName = "mdx";
  defaultPackage = pkgs.vimPlugins.mdx;

  maintainers = [ ];
}
