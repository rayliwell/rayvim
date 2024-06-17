{
  plugins = {
    lsp = {
      enable = true;

      servers = {
        "nil-ls".enable = true;
        "tsserver".enable = true;
        "tailwindcss".enable = true;
      };
    };
  };
}
