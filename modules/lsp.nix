{
  plugins = {
    tailwind-tools.enable = true;

    lsp = {
      enable = true;

      servers = {
        astro.enable = true;
        nixd.enable = true;
        ts_ls.enable = true;
        tailwindcss.enable = true;
      };
    };
  };
}
