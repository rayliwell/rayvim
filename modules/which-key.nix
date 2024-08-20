{
  config,
  lib,
  helpers,
  ...
}:
{
  options = with lib; {
    keymapCategories = mkOption { type = types.lazyAttrsOf types.str; };
  };

  config = {
    plugins = {
      "which-key" = {
        enable = true;
        settings = {
          spec = lib.attrsets.mapAttrsToList (key: name: {
            __unkeyed = "<leader>${key}";
            group = name;
          }) config.keymapCategories;
        };
      };
    };
  };
}
