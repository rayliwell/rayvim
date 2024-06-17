{ helpers, ... }:
{
  keymapCategories."g" = "Git";

  keymaps = [
    {
      key = "<leader>gg";
      action = helpers.mkRaw "require('neogit').open";
      mode = "n";
      options = {
        desc = "Open git";
      };
    }
  ];
}
