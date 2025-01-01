{
  plugins = {
    colorizer = {
      enable = true;

      settings = {
        user_default_options = {
          names = false;
          RGB = true;
          RRGGBB = true;
          RRGGBBAA = true;
          AARRGGBB = true;
          css_fn = true;
          tailwind = true;
        };

        buftypes = [
          "*"
          "!nofile"
          "!prompt"
          "!popup"
        ];
      };
    };
  };
}
