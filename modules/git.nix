{
  plugins = {
    gitsigns = {
      enable = true;
    };

    neogit = {
      enable = true;
      settings = {
        mappings = {
          "commit_editor" = {
            "<leader>bc" = "Submit";
            "<leader>wq" = "Close";
            "<leader>bq" = "Abort";
          };
        };
      };
    };
  };
}
