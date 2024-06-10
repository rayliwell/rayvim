{
  plugins = {
    neo-tree = {
      enable = true;

      window = {
        width = 32;
        autoExpandWidth = true;

        mappings = {
          "<tab>" = "toggle_directory";
        };
      };

      popupBorderStyle = "rounded";
      enableGitStatus = false;
    };
  };
}
