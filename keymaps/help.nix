{
  keymapCategories."h" = "Help";

  keymaps = [
    {
      key = "<leader>hh";
      action = "require('telescope.builtin').help_tags";
      lua = true;
      mode = "n";
      options = { desc = "Neovim help tags"; };
    }

    {
      key = "<leader>hk";
      action = "require('telescope.builtin').keymaps";
      lua = true;
      mode = "n";
      options = { desc = "Keymaps"; };
    }

    {
      key = "<leader>ht";
      action = "require('telescope.builtin').builtin";
      lua = true;
      mode = "n";
      options = { desc = "Telescopes"; };
    }
  ];
}
