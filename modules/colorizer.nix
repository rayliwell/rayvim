{
  plugins = {
    "nvim-colorizer" = {
      enable = true;

      fileTypes = [
        {
          language = ''["*"]'';
          css = true;
          names = false;
          css_fn = true;
          hsl_fn = true;
          tailwind = true;
        }
      ];
    };
  };
}
