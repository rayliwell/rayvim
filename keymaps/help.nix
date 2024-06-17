{ helpers, ... }:
{
  keymapCategories."h" = "Help";

  keymaps = [
    {
      key = "<leader>hh";
      action = helpers.mkRaw "require('telescope.builtin').help_tags";
      mode = "n";
      options = {
        desc = "Neovim help tags";
      };
    }

    {
      key = "<leader>hk";
      action = helpers.mkRaw "require('telescope.builtin').keymaps";
      mode = "n";
      options = {
        desc = "Keymaps";
      };
    }

    {
      key = "<leader>ht";
      action = helpers.mkRaw "require('telescope.builtin').builtin";
      mode = "n";
      options = {
        desc = "Telescopes";
      };
    }
  ];
}
