{
  keymapCategories."f" = "File";

  keymaps = [{
    key = "<leader>ff";
    action = ":Neotree position=current<cr>";
    mode = "n";
    options = { desc = "Browser"; };
  }];
}
