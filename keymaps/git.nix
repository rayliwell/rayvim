{
  keymapCategories."g" = "Git";

  keymaps = [{
    key = "<leader>gg";
    action = "require('neogit').open";
    lua = true;
    mode = "n";
    options = { desc = "Open git"; };
  }];
}
