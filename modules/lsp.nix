{
  plugins = {
    tailwind-tools.enable = true;

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
