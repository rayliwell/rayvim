{
  keymapCategories."b" = "Buffer";

  keymaps = [
    {
      key = "<leader>bs";
      action = ":update<cr>";
      mode = "n";
      options = {
        desc = "Buffer save";
      };
    }

    {
      key = "<leader>bq";
      action = ":bdelete<cr>";
      mode = "n";
      options = {
        desc = "Buffer quit";
      };
    }

    {
      key = "<leader>bQ";
      action = ":bdelete!<cr>";
      mode = "n";
      options = {
        desc = "Buffer quit (without saving)";
      };
    }
  ];
}
