{
  plugins = {
    telescope = {
      enable = true;

      extensions = {
        "file-browser" = {
          enable = true;
          settings = {
            depth = 3;
            respect_gitignore = true;
            hidden = true;
          };
        };
      };
    };
  };
}
