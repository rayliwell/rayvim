{
  plugins = {
    tailwind-tools.enable = true;

    lsp = {
      enable = true;

      servers = {
        "astro".enable = true;
        "nil-ls".enable = true;
        "tsserver".enable = true;
        "tailwindcss".enable = true;
      };
    };
  };
}
