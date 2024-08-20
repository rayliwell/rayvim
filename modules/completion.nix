{
  plugins = {
    cmp = {
      enable = true;

      settings = {
        mapping = {
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
        };
        sources = [
          { name = "path"; }
          { name = "nvim_lsp"; }
        ];
      };
    };

    "cmp-nvim-lsp" = {
      enable = true;
    };

    "cmp-path" = {
      enable = true;
    };
  };
}
