{
  plugins = {
    lsp = {
      enable = true;

      servers = {
        "nil_ls".enable = true;
        "tsserver".enable = true;
        "tailwindcss".enable = true;
      };
    };
  };
}
