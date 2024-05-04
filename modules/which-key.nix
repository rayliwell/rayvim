{
  pkgs,
  config,
  lib,
  ...
}:
{
  options = {
    keymapCategories = lib.mkOption { type = lib.types.lazyAttrsOf lib.types.str; };
  };

  config = {
    plugins = {
      "which-key" = {
        enable = true;
        registrations = lib.attrsets.mapAttrs' (
          key: name:
          lib.attrsets.nameValuePair ("<leader>" + key) {
            inherit name;
            "_" = "which_key_ignore";
          }
        ) config.keymapCategories;
      };
    };
  };
}
