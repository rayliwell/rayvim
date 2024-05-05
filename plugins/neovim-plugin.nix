{
  lib,
  helpers,
  pkgs,
  config,
  ...
}:
helpers.neovim-plugin.mkNeovimPlugin config {
  name = "neovim-project";
  defaultPackage = pkgs.vimPlugins.neovim-project;
  maintainers = [ ];

  extraConfig = cfg: { extraPlugins = with pkgs.vimPlugins; [ neovim-session-manager ]; };
}
