{
  plugins = {
    tailwind-tools.enable = true;

    lsp = {
      enable = true;

      servers = {
        "astro".enable = true;
        "nil_ls".enable = true;
        "ts_ls".enable = true;
        "tailwindcss".enable = true;
      };
    };
  };
}
