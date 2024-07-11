{
  plugins = {
    "nvim-colorizer" = {
      enable = true;

      userDefaultOptions = {
        names = false;
        RGB = true;
        RRGGBB = true;
        RRGGBBAA = true;
        AARRGGBB = true;
        css_fn = true;
        tailwind = true;
      };

      bufTypes = [
        "*"
        "!nofile"
        "!prompt"
        "!popup"
      ];
    };
  };
}
