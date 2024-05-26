{
  plugins = {
    cmp = {
      enable = true;
      settings = {
        mapping = {
          "<C-n>" = "cmp.mapping.scroll_docs(-4)";
          "<C-p>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
        };
        sources = [ { name = "path"; } { name = "nvim_lsp"; } ];
      };
    };

    "cmp-nvim-lsp" = { enable = true; };

    "cmp-path" = { enable = true; };
  };
}
