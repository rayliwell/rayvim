{ config, lib, ... }:
{
  options = with lib; {
    keymapCategories = mkOption { type = types.lazyAttrsOf types.str; };
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
