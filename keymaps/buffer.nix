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
      key = "<leader>bS";
      action = ":wall<cr>";
      mode = "n";
      options = {
        desc = "Save all buffers";
      };
    }

    {
      key = "<leader>bq";
      action = ":bp<bar>sp<bar>bn<bar>bd<CR>";
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
